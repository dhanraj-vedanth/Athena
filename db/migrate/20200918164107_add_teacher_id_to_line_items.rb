class AddTeacherIdToLineItems < ActiveRecord::Migration[6.0]
  def change
    add_column :line_items, :teacher_id, :integer
  end
end
