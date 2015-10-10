class ChangeCarTypeInServices < ActiveRecord::Migration
   def change
    change_column :users, :car_type, :string
   end
end
