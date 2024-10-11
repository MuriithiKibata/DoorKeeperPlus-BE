class AddResetPasswordTokenToOrganisation < ActiveRecord::Migration[7.1]
  def change
    add_column :organisations, :reset_password_token, :string
    add_column :organisations, :reset_password_token_sent_at, :datetime
  end
end
