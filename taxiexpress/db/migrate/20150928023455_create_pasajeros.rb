class CreatePasajeros < ActiveRecord::Migration
  def change
    create_table :pasajeros do |t|
      t.string :nombre_pasajero
      t.string :correo
      t.string :password
      t.string :conf_pass

      t.timestamps null: false
    end
  end
end
