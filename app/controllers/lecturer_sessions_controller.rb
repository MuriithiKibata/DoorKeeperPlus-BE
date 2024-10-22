class LecturerSessionsController < ApplicationController
    skip_before_action :set_current_attributes
    def create 
        lecturer = Lecturer.find_by(email: params[:email])

        if lecturer && lecturer.authenticate(params[:password])

            cookies.signed[:lecturer_id] = { :value => lecturer.id, :httponly => true, :expires => 1.week }
            
            render json: lecturer
        else 
            # Comes from app controller
            user_not_found
        end
    end

    

end
