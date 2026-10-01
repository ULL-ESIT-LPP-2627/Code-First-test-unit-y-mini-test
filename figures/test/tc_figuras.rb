require 'lib/figuras'
require 'minitest/autorun'

class TestFiguras < Minitest::Test
  def setup
    # Se ejecuta ANTES de cada prueba
    # nothing
  end
  def tear_down
    # Se ejecuta DESPUÉS de cada prueba (equivalente a Test::Unit)
    # nothing
  end
  def test_simple
    #Integer
    assert_equal(16, perimetro_cuadrado(4))
    #Float
    assert_equal(16.0, perimetro_cuadrado(4.0))
  end
end
