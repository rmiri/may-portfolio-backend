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
        aboutMe.update(aboutMe_params)
       
        render json: aboutMe
    end

    private

    def aboutMe_params
        params.permit(:name, :about_me, :id)
    end


end
