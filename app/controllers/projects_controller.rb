class ProjectsController < ApplicationController
    skip_before_action :authorized
    def index
        render json: Project.all
    end
    def show
        @project = Project.find(params[:id])
        render json: {project: @project, pictures: url_for(@project.pictures)}
    end
    def create
        @project = Project.create(project_params)
        # byebug
        # @project.pictures.attach(params[:pictures])
       
        # if @project.pictures.attached?
        #     @project.update(image_url: url_for(@project.pictures))
        # end

        if @project
            render json: {project: @project, pictures: url_for(@project.pictures)}
        else
            render json: {error: "something went wrong, try again later"}
        end
    end

    private

    def project_params
        params.permit(:title, :index_description, :description, :category, :user_id, :pictures)
    end

end
