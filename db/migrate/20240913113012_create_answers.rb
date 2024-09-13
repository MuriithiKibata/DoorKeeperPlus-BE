class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.text :content
      t.integer :question_id
      t.integer :student_id
      t.integer :test_id

      t.timestamps
    end
  end
end
