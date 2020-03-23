class PagesController < ApplicationController
    def index
        render json: Page.all
    end
    def show
        page = Page.find_by(id: params[:id])
        render json: page
    end
    def update
        page = Page.find_by(id: params[:id])
        page.update(page_params)
       
        render json: {page: page, message: "Update successeful"}
    end

    private

    def page_params
        params.permit(:website_name, :logo, :nav_link_1, :nav_link_2, :filter_1, :filter_2, :filter_3, :footer_link_1, :footer_link_2, :footer_link_3)
    end


end
