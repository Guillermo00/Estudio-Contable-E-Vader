require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  def test_eliminar_factura_con_cliente

    persona1 = Persona.new ({nombre: 'UNLP', descripcion: 'Facultad' }) 
    factura1 = Factura.new({monto:'333', descripcion:'gastos varios', persona: persona1, cliente: @cliente})
    @cliente.facturas << factura1

    assert_difference('Cliente.count', -0) do #No elimina
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path

  end

  def test_eliminar_factura_sin_cliente

    assert_difference('Cliente.count', -1) do  #si elimina
      delete :destroy, id: @cliente
    end
    assert_redirected_to clientes_path
  end

end
