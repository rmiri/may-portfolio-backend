class ApplicationController < ActionController::API
    before_action :authorized, only: [:create]


    def encode_token(payload)
        JWT.encode(payload, 'my_secret')
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header
            begin
                JWT.decode(token,'my_secret')
            rescue 
                {}
            end
        end
    end

    def current_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

   

    def logged_in?
        !!current_user
    end

    def authorized
        render json: { message: 'Please log in'}, status: :unauthorizes unless logged_in?
    end

end