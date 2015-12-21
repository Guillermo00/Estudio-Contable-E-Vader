class AddReferencePersonaToFactura < ActiveRecord::Migration
  def change
    add_reference :facturas, :persona, index: true, foreign_key: true
  end
end
