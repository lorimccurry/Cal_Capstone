require 'month'
require 'zeller'
require 'minitest/autorun'

class TestMonth < MiniTest::Unit::TestCase

  def test_01_test_month_name_conversion_January
    new_month = Month.new(1, 2012)
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
EOS
    assert_equal(expected.chomp, new_month.head_rows)
  end

  def test_02_test_month_name_conversion_May
    new_month = Month.new(5, 2012)
    expected = <<EOS
      May 2012
Su Mo Tu We Th Fr Sa
EOS
    assert_equal(expected.chomp, new_month.head_rows)
  end

end