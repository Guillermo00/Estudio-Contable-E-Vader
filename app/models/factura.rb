class Factura < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :persona

	validates :monto,:descripcion,:persona,:cliente, presence: {message:"Obligatorio"} 
	validates :monto, numericality: {:only_integer => true,:greater_than_or_equal_to => 1, :message => "Debe ser numerico no negativo"}

end
