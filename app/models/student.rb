class Student < ApplicationRecord
    has_secure_password
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone_number, presence: true, length: {within: 10..12}
    validates :fingerprint, presence: true
    validates :admission_number, presence: true, length: {is: 11}
    validates :email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email format"}, uniqueness: true


    def generate_reset_token!
        self.reset_password_token = generate_token!
        self.reset_password_token_sent_at = Time.now
        save!
    end

    def token_is_valid?
        (self.reset_password_token_sent_at + 15.minutes) > Time.now
    end

    def reset_password!(password)
        self.reset_password_token = nil
        self.password = password
        save!
    end



    private

    def generate_token!
        SecureRandom.hex(10)
    end
end
