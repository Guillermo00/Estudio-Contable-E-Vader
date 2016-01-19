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



  def test_eliminar_cli_con_facturacion
    
    @cliente1 = Cliente.new ({nombre: 'Guillermo', apellido: 'Pose', nacimiento: Time.now, genero: 'M', dni: '1320',  cuil_cuit: '1540', telefono: '1234', email: 'pose.guille@gmail.com', direccion: 'calle 56' })
    @cliente1.save
    @persona1 = Persona.new({nombre: 'UNLP', descripcion: 'Facultad' }) 
    @persona1.save
    @factura1 = Factura.new({monto:'333', descripcion:'gastos varios', persona: @persona1, cliente: @cliente1})
    

    @cliente1.facturas << @factura1
    assert @cliente1.save
  #  p @cliente1.facturas.count
    assert_not @cliente1.destroy
    assert_not @cliente1.destroyed? 
  end

  def test_eliminar_cliente_sin_factura

      cliente2 = Cliente.new ({nombre: 'Guillermo', apellido: 'Pose', nacimiento: Time.now, genero: 'M', dni: '13320',  cuil_cuit: '11540', telefono: '1234', email: 'pose.guille@gmail.com', direccion: 'calle 56' })
      assert cliente2.save

      p cliente2.facturas.count
      assert cliente2.destroy
   
      assert cliente2.destroyed?
  end


end
