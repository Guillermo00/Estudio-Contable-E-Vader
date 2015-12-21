class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.integer :monto
      t.date :emision
      t.belongs_to :cliente, index: true
      t.timestamps null: false
    end
  end
end
