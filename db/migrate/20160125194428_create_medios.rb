class CreateMedios < ActiveRecord::Migration
  def change
    create_table :medios do |t|
      t.string :nombre
      t.string :contacto
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
