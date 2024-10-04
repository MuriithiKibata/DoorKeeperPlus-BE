class LecturerSessionsController < ApplicationController

    def create 
        lecturer = Lecturer.find_by(email: params[:email])

        if lecturer && lecturer.authenticate(params[:password])

            cookies.signed[:id] = { :value => lecturer.id, :httponly => true, :expires => 1.week }
            
            render json: lecturer
        else 
            # Comes from app controller
            user_not_found
        end
    end

    

end
