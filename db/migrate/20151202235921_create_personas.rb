class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
