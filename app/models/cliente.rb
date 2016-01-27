class Cliente < ActiveRecord::Base
	has_many :facturas, dependent: :restrict_with_error
	
	has_many :medios, dependent: :destroy
	validates :nombre,:apellido,:dni,:cuil_cuit,:direccion,:telefono, presence: {message:"Obligatorio"} 
	
	validates :nombre,:apellido,:direccion, length: {minimum: 3, maximum: 15, :message => "Entre 2 y 15 caracteres"}
	
	validates :dni,:telefono, numericality: {:only_integer => true,:greater_than_or_equal_to => 1, :message => "Debe ser numerico no negativo"}

	validates :dni,:cuil_cuit, uniqueness: { message: "Ya existe"}

	
	
	def edad
		age = Date.today.year - self.nacimiento.year
   		age = ((DateTime.now - self.nacimiento) / 365.25).to_i
	end

	def por_mes
		#a = Factura.where(cliente_id:self.id).group("emision") //agrupa por fecha exacta
		year=Date.today.year
		a= Factura.where(cliente_id:self.id).where("emision >= ? and emision <= ?", "#{year}-01-01", "#{year}-12-31").group("strftime('%m', emision)").count
	end

	def por_anio
		#b= Factura.where(cliente_id:self.id).group_by{|u| u.emision.year}
		b= Factura.where(cliente_id:self.id).group("strftime('%Y', emision)").sum("monto")
	end

	def mas_facturado
	#  personaas a las q mas cantidad de facturas le emitio
	#	d = Persona.includes(:facturas).where(facturas: { cliente_id: self.id }).group("persona_id").pluck("personas.nombre, count(facturas.id)").sort_by { |x| x[1] }.reverse.first(5) 
	d = Persona.includes(:facturas).where(facturas: { cliente_id: self.id }).group("persona_id").pluck("personas.nombre, sum(facturas.monto)").sort_by { |x| x[1] }.reverse.first(5) 
	end
end
