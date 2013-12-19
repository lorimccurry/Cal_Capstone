require 'zeller'
require 'minitest/autorun'


class TestZeller < MiniTest::Unit::TestCase
  def test_zeller_has_zeller_method
    Zeller.test_method("arg")
  end
end