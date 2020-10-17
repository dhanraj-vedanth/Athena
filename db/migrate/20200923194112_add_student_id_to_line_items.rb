class AddStudentIdToLineItems < ActiveRecord::Migration[6.0]
  def change
    add_column :line_items, :student_id, :integer
  end
end
