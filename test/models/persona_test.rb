require 'test_helper'

class PersonaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def persona1
    @persona1 ||= Persona.new
  end
 
  def test_invalid
  	#Persona o entidad sin atributos
    assert persona1.invalid?
  end
  
  def test_valid
  	persona1 = Persona.new ({nombre: 'UNLP', descripcion: 'Facultad' })
 	  assert persona1.valid?
  end
  
 def test_validar_longitud
    persona1 = Persona.new ({nombre: 'UN', descripcion: 'Facultad' })
    assert persona1.invalid?
  end

end
