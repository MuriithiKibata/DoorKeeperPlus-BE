# app/models/current.rb

class Current < ActiveSupport::CurrentAttributes
    attribute :user
  
    # You can define helper methods for derived attributes
    def admin?
      user&.admin?
    end
  end