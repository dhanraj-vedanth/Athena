class AddCartToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :student_id, :integer
  end
end
