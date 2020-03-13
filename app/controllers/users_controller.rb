class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create,:validate]

    def index
        render json: User.all
    end

    def profile
        render json: { user: "user"}, status: :accepted
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: @user, jwt: @token }, status: :created
        else
            render json: { error: 'Failed to create user'}, status: :not_acceptable
        end
    end

    def validate
        if current_user
            render json: {user: current_user, token: encode_token(id: current_user.id) }
        else
          render json: { error: "You are not authorized" }
        end
    end

    private
    def user_params
        params.require(:user).permit(:email,:password,:name,:admin?,:token)
    end
end
