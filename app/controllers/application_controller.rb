class ApplicationController < ActionController::API
include ActionController::Cookies



    def user_not_found
        render json: { error: "Password or Email is incorrect" }, status: :unauthorized
    end 
end
