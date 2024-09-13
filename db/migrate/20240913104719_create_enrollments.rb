class CreateEnrollments < ActiveRecord::Migration[7.1]
  def change
    create_table :enrollments do |t|
      t.integer :session_id
      t.integer :student_id

      t.timestamps
    end
  end
end
