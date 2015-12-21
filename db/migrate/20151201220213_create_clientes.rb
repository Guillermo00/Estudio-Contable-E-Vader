class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.date :nacimiento
      t.string :genero
      t.integer :dni
      t.integer :cuil_cuit
      t.integer :telefono
      t.string :email
      t.string :direccion
      t.timestamps null: false
    end
  end
end
