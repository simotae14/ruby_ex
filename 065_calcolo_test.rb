require 'minitest/autorun'
require_relative '064_calcolo'
# la nostra classe di Test che estende MiniTest::Unit::TestCase 
class CalcoloTest < MiniTest::Test
  # metodo che viene applicato a tutti i casi di test 
  def setup
		# creo istanza di Calcolo
		@calc = Calcolo.new('test')
	end
  
  # creo i metodi di test
  # test somma
  def test_somma
    assert_equal 4, @calc.somma(2, 2)
  end
  
  # test sottrazione
  def test_sottrazione
    assert_equal 2, @calc.sottrazione(4, 2)
  end
  
  # test divisione
  def test_divisione
    assert_equal 2, @calc.divisione(4, 2)
  end
end