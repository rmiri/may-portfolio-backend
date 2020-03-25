class AboutMesController < ApplicationController
    def index
        render json: AboutMe.all
    end
    def show
        aboutMe = AboutMe.find_by(id: params[:id])
        render json: aboutMe
    end
    def update
        byebug
        aboutMe = AboutMe.find_by(id: params[:id])
        if aboutMe.update(aboutMe_params)
            render json: {page: page, message: "Update successeful"}
        else
            render json: {message: "Something went wrong"}  
        end
    end

    private

    def aboutMe_params
        byebug
        params.permit(:name, :about_me, :id, :profile_photo, :phone, :email)
    end

end
