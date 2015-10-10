class CreateAddressFavorites < ActiveRecord::Migration
  def change
    create_table :address_favorites do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.references :address, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
