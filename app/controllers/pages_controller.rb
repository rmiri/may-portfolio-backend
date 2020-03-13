class PagesController < ApplicationController
    def index
        render json: Page.all
    end
end
