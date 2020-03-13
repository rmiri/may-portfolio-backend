class ProjectsController < ApplicationController
    skip_before_action :authorized
    def index
        render json: Project.all
    end
    def show
        render json: Project.find(params[:id])
    end
    def create
  
        @project = Project.new(title: params[:title], index_description: params[:index_description], description: params[:description], category: params[:category], user_id: params[:user_id]  )
    
        if @project.save
            render json: {message: "all good msiter"}
        else
            render json: {error: "something went wrong, try again later"}
        end
    end
end
