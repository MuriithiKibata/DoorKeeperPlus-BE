class Student < ApplicationRecord
    has_secure_password
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone_number, presence: true, length: {within: 10..12}
    validates :fingerprint, presence: true
    validates :admission_number, presence: true, length: {is: 11}
    validates :email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email format"}, uniqueness: true
end
