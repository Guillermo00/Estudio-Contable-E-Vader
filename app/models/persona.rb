class Persona < ActiveRecord::Base
	has_many :facturas
	validates :nombre,:descripcion, presence: {message:"Obligatorio"} 
	validates :nombre, length: {minimum: 3, maximum: 25, :message => "Entre 2 y 25 caracteres"}

end
