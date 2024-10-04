class OrganisationSessionsController < ApplicationController

    def create 
        organisation = Organisation.find_by(email: organisation_params[:email])
        if organisation && organisation.authenticate(organisation_params[:password])
            cookies.signed[:id] = { :value => organisation.id, :expires => 1.week, :httponly => true }
            render json: organisation
        else 
            user_not_found
        end
    end


    private

    def organisation_params
        params.require(:organisation).permit(:password, :email)
    end

end
