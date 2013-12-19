require 'month'
require 'minitest/autorun'


class TestMonth < MiniTest::Unit::TestCase
  def test_month_has_month_method
    Month.test_method("arg")
  end
end