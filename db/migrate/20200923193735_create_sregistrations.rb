class CreateSregistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :sregistrations do |t|
      t.integer :course_id
      t.integer :student_id

      t.timestamps
    end
  end
end
