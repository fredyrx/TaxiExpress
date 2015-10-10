class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :num_passenger, :integer
    add_column :users, :car_type, :integer
    add_column :users, :state, :string
  end
end
