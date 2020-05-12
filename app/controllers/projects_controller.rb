class ProjectsController < ApplicationController
    skip_before_action :authorized
    def index
        @projectsWithPics = Project.all.map{ |proj| {
            project: proj, 
            pictures: url_for(proj.pictures),
            } }
        render json: @projectsWithPics
    end
    def show
        # debugger
        @project = Project.find(params[:id])
        if @project.photos 
             myPhotos = @project.photos.map { |photo| url_for(photo)}
        
        else
            myPhotos = ["#"]
        end

        if @project.pictures
            render json: {project: @project, pictures: url_for(@project.pictures), photos: myPhotos}
        else
            render json: {project: @project, pictures: "#"}
        end
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
        params.permit(:title, :index_description, :description, :category, :user_id, :pictures, :photos)
    end

end
