class AddDescripcionToFactura < ActiveRecord::Migration
  def change
    add_column :facturas, :descripcion, :text
  end
end
