class AddAdminIdToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :admin_id, :integer
  end
end
