class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :course_no
      t.string :discipline
      t.string :area
      t.float :price

      t.timestamps
    end
  end
end
