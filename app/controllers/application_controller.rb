class ApplicationController < ActionController::API
include ActionController::Cookies
before_action :set_current_attributes


    def user_not_found
        render json: { error: "Password or Email is incorrect" }, status: :unauthorized
    end 

    def isOrganisation?
        unless Current.user.instance_of? Organisation
          render json: {message: "You must be a Super Admin to perform this operation"}
      end
    end

      private

      def set_current_attributes
        if cookies.signed[:organisation_id]
            Current.user = Organisation.find_by(id: cookies.signed[:organisation_id])
        elsif cookies.signed[:lecturer_id]
            Current.user = Lecturer.find_by(id: cookies.signed[:lecturer_id])
        elsif cookies.signed[:student_id]
            Current.user = Student.find_by(id: cookies.signed[:student_id])
      end

      unless Current.user
        render json: { error: "No valid user found" }, status: :unauthorized
      end
      print Current.user
    end
end
