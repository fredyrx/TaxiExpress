class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :num_passenger
      t.string :car_type
      t.integer :pay_method
      t.string :state
      t.string :feedback
      t.references :route, index: true, foreign_key: true
      t.integer :user_customer_id
      t.integer :user_driver_id

      t.timestamps null: false
    end
  end
end
