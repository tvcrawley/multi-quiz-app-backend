class UsersController < ApplicationController
    def signup
        user = User.create(user_params)

        if user.valid?
            render json: user
        else
            render json: { error: "Unable to create a user "}
        end
    end

    def login
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            render json: {email: user.email, token: encode_token({user_id: user.id})}
        else
            render json: {message: "Wrong email or password"}
        end
    end

    private
    def user_params
        params.permit(:email, :password, :name)
    end
end
