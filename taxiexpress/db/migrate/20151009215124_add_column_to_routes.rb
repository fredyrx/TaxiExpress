
class AddColumnToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :address_origin_id, :integer
    add_column :routes, :address_destiny_id, :integer
  end
end

