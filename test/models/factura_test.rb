require 'test_helper'

class FacturaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  

	def test_factura_con_cliente
      	cliente1 = Cliente.new ({nombre: 'Guillermo', apellido: 'Pose', nacimiento: Time.now, genero: 'M', dni: '10',  cuil_cuit: '10', telefono: '1234', email: 'pose.guille@gmail.com', direccion: 'calle 56' })

		persona1 = Persona.new ({nombre: 'UNLP', descripcion: 'Facultad' })	
 
       factura1 = Factura.new({monto:'333', descripcion:'gastos varios', persona: persona1, cliente: cliente1})
   		
   		assert_equal( factura1.cliente.nombre, 'Guillermo')
      	assert factura1.valid?
   end

   	def test_factura_sin_cliente
      	cliente1 = Cliente.new ({nombre: 'Guillermo', apellido: 'Pose', nacimiento: Time.now, genero: 'M', dni: '10',  cuil_cuit: '10', telefono: '1234', email: 'pose.guille@gmail.com', direccion: 'calle 56' })

		persona1 = Persona.new ({nombre: 'UNLP', descripcion: 'Facultad' })	
 
       factura1 = Factura.new({monto:'333', descripcion:'gastos varios', persona: persona1})
      	assert factura1.invalid?
   end
   	def test_factura_sin_persona
      	cliente1 = Cliente.new ({nombre: 'Guillermo', apellido: 'Pose', nacimiento: Time.now, genero: 'M', dni: '10',  cuil_cuit: '10', telefono: '1234', email: 'pose.guille@gmail.com', direccion: 'calle 56' })

		persona1 = Persona.new ({nombre: 'UNLP', descripcion: 'Facultad' })	
 
       factura1 = Factura.new({monto:'333', descripcion:'gastos varios', cliente: cliente1})
      	assert factura1.invalid?
   end

end
