# esempio di assertion per TESTARE ECCEZIONE
# come la divisione per Zero
require 'minitest/autorun'
require_relative '064_calcolo'

class CalcoloTest < MiniTest::Test
  def setup
    @calc = Calcolo.new('test')
  end
  
  # definisco il metodo di test sulla divisione
  def test_divisione_per_zero
    assert_raises ZeroDivisionError do
      @calc.divisione(1, 0)
    end
  end
end