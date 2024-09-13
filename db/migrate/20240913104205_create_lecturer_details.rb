class CreateLecturerDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :lecturer_details do |t|
      t.string :phone_number
      t.string :email
      t.integer :rating
      t.integer :lecturer_id

      t.timestamps
    end
  end
end
