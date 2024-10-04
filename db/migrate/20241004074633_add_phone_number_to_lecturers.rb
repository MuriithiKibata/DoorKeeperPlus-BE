class AddPhoneNumberToLecturers < ActiveRecord::Migration[7.1]
  def change
    add_column :lecturers, :phone_number, :string
  end
end
