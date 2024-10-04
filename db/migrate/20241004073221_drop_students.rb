class DropStudents < ActiveRecord::Migration[7.1]
  def change
    drop_table :students
  end
end
