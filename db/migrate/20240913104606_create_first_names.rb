class CreateFirstNames < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :organisation_id
      t.string :fingerprint
      t.string :admission_number
      t.string :email
      t.string :phone_number
      t.string :password_digest
      
      t.timestamps
    end
  end
end
