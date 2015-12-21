require 'test_helper'

class ClienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

   	def test_cliente_vacio
  		cliente2 = Cliente.new
  		assert cliente2.invalid?
  	end

   def test_es_valido
      cliente1 = Cliente.new ({nombre: 'Guillermo', apellido: 'Pose', nacimiento: Time.now, genero: 'M', dni: '10',  cuil_cuit: '10', telefono: '1234', email: 'pose.guille@gmail.com', direccion: 'calle 56' })
    #  cliente1.valid?
     # p cliente1.errors.to_h
      assert cliente1.valid?
   end

   def test_sin_email  # unico campo opcional
      cliente1 = Cliente.new ({nombre: 'Guillermo', apellido: 'Pose', nacimiento: Time.now, genero: 'M', dni: '10',  cuil_cuit: '10', telefono: '1234', direccion: 'calle 56' })
  
      assert cliente1.valid?
   end

   def test_dni_invalido
        
      cliente1 = Cliente.new ({nombre: 'Guillermo', apellido: 'Pose', nacimiento: Time.now, genero: 'M', dni: 'falla',  cuil_cuit: '10', telefono: '1234', email: 'pose.guille@gmail.com', direccion: 'calle 56' })
      assert cliente1.invalid?
   end



end
