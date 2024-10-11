class AddResetPasswordTokenToLecturers < ActiveRecord::Migration[7.1]
  def change
    add_column :lecturers, :reset_password_token, :string
    add_column :lecturers, :reset_password_token_sent_at, :datetime
  end
end
