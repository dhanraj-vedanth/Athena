class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.integer :course_id
      t.string :student_name
      t.string :teacher_name
      t.string :course_name
      t.string :review

      t.timestamps
    end
  end
end
