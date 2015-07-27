require 'test/unit'
require_relative 'calc'

class TestCalc < Test::Unit::TestCase
  def setup
    @calc = Calc.new
  end

  def test_both_zero()
      assert_equal(0,@calc.add(0,0))
  end
end
