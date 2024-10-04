class LecturerDetail < ApplicationRecord
    belongs_to :lecturer
    validates :position, presence: true

end
