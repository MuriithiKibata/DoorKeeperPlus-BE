class Organisation < ApplicationRecord
    has_secure_password
    validates :name, presence: true
    validates :email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email format"}, uniqueness: true
    validates :number, presence: true, length: {within: 10..12}
    validates :location, presence: true
    validates :latitude, presence: true, length: {maximum: 12}
    validates :longitude, presence: true, length: {maximum: 13}


end
