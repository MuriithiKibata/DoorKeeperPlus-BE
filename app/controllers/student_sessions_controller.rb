class StudentSessionsController < ApplicationController

    def create
        @student = Student.find_by(email: student_params[:email])
        if @student && @student.authenticate(student_params[:password])
            cookies.signed[:id] = {:httponly => true, :value => @student.id, :expires => 1.week}
           render json: @student
        else
            user_not_found
        end
    end

    private

    def student_params
        params.require(:student).permit(:email, :password, :fingerprint)
    end

end
