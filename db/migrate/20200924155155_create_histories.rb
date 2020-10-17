class CreateHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :histories do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.integer :course_id
      t.string :student_name
      t.string :teacher_name
      t.string :course_name

      t.timestamps
    end
  end
end
