require 'test_helper'

class MedioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    def test_medio_vacio
  		medio = Medio.new
  		assert medio.invalid?
  	end

  	def test_medio_incompleto
      medio1 = Medio.new ({nombre: 'Facebook'})
      assert medio1.invalid?
 	end

  	def test_medio_valido
      medio1 = Medio.new ({nombre: 'Facebook', contacto: 'Guille_Pose'})
      assert medio1.valid?
 	end
end
