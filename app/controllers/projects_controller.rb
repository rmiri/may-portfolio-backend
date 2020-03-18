class ProjectsController < ApplicationController
    skip_before_action :authorized
    def index
        render json: Project.all
    end
    def show
        project = Project.find(params[:id])
        projPictures = []
        project.pictures.map{ |pic| projPictures.push(url_for(pic))}
        # byebug
        render json: {project: project, pictures: projPictures}
    end
    def create
        @project = Project.create(project_params)

        if @project
            render json: {message: "Project created"}
        else
            render json: {message: "something went wrong, try again later"}
        end
    end

    def destroy
        @project = Project.find(params[:id])
        @project.destroy
        render json: {message: "Project deleted"}
    end

    private

    def project_params
        params.permit(:title, :index_description, :description, :category, :user_id, pictures: [])
    end

end
