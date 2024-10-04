class Lecturer < ApplicationRecord
    has_secure_password
    has_one :lecturer_detail, dependent: :destroy
    accepts_nested_attributes_for :lecturer_detail

    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email format" }, uniqueness: true

    validates :first_name, presence: true

    validates :last_name, presence: true

    validates :phone_number, presence: true, length: {within: 10..12}

end
