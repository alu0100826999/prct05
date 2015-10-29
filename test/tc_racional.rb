#Implementamos las Pruebas Unitarias asociadas a la clase Fraccion

require "lib/racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	
	def setup
	   @test1 = Fraccion.new(1,1)
	   @test2 = Fraccion.new(6,3)
	   @test3 = Fraccion.new(3,6)
	end
	
	def test_simple
	   assert_equal("1/0", @test1.to_s)
	   assert_equal("6/3", @test2.to_s)
	   assert_equal("3/6", @test3.to_s)
	   assert_equal("6/3", (@test1 * @test2).to_s)
	   assert_equal("36/9", (@test2 / @test3).to_s)
	   assert_equal("15/6", (@test2 + @test3).to_s)
	   assert_equal("-3/3", (@test1 - @test2).to_s)
	end

end
