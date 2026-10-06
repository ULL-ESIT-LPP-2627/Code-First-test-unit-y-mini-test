require 'lib/figuras'
require 'minitest/autorun'

class TestFiguras < Minitest::Test
  def setup
    # nothing
  end
  def tear_down
    # nothing
  end
  def test_simple
    #Integer
    assert_equal(16, perimetro_cuadrado(4))
    #Float
    assert_equal(16.0, perimetro_cuadrado(4.0))
  end
  def test_type_check
    assert_raises(ZeroDivisionError) {perimetro_cuadrado(1/0)}
    assert_raises(NoMethodError) {perimetro_cuadrado(Object.new)}
  end
  def test_failure
    assert_equal("4444", perimetro_cuadrado("4"))
    assert_equal("4444", perimetro_cuadrado('4'))
  end
end
