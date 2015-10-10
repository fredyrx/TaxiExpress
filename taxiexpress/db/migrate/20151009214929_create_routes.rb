class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.decimal :price

      t.timestamps null: false
    end
  end
end

