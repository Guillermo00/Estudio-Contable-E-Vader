class Medio < ActiveRecord::Base
  belongs_to :cliente
  validates :nombre,:contacto, presence: {message:"Obligatorio"} 
end
