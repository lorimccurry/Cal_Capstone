require 'month'
require 'zeller'
require 'minitest/autorun'

class TestMonth < MiniTest::Unit::TestCase

  def test_01_test_month_name_conversion_January
    new_month = Month.new(1, 2012)
    assert_equal("    January 2012    ", new_month.month_name)
  end

  def test_02_test_month_name_conversion_May
    new_month = Month.new(5, 2012)
    assert_equal("      May 2012      ", new_month.month_name)
  end

  def test_03_test_month_name_row_length
    new_month = Month.new(1, 2012)
    row = new_month.month_name
    assert_equal(20, row.length)
  end

  def test_04_test_month_name_row_length
    new_month = Month.new(5, 2012)
    row = new_month.month_name
    assert_equal(20, row.length)
  end

end