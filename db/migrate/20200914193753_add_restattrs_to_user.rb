class AddRestattrsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :major, :string
    add_column :users, :cc_name, :string
    add_column :users, :cc_number, :bigint
    add_column :users, :cc_exp_date, :string
    add_column :users, :cc_cvv, :integer
  end
end
