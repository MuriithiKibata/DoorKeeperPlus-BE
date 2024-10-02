class CreateLecturers < ActiveRecord::Migration[7.1]
  def change
    create_table :lecturers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :organisation_id
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
