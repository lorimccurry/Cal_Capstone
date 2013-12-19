require 'year'
require 'minitest/autorun'


class TestYear < MiniTest::Unit::TestCase
  def test_year_has_year_method
    Year.test_method("arg")
  end
end