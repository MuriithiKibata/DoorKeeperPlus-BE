class AddPasswordDigestToOrganisation < ActiveRecord::Migration[7.1]
  def change
    add_column :organisations, :password_digest, :string
  end
end
