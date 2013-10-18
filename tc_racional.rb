# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	def test_simple
		assert_equal(Fracion.new(16,3),Fracion.new(25,5)+Fracion.new(5,15))
	end
end
