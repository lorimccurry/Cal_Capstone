require 'month'
require 'zeller'
require 'minitest/autorun'

class TestMonth < MiniTest::Unit::TestCase

  def test_01_test_month_name_conversion_January
    new_month = Month.new
    assert_equal("      January       ", new_month.month_name(1))
  end

  def test_02_test_month_name_conversion_May
    new_month = Month.new
    assert_equal("        May         ", new_month.month_name(5))
  end

  def test_03_test_month_name_row_length
    new_month = Month.new
    row = new_month.month_name(1)
    assert_equal(20, row.length)
  end

  def test_04_test_month_name_row_length
    new_month = Month.new
    row = new_month.month_name(5)
    assert_equal(20, row.length)
  end

end