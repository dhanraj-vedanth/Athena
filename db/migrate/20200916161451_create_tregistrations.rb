class CreateTregistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :tregistrations do |t|
      t.integer :course_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
