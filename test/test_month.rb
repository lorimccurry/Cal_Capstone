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

  def test_03_test_days_in_month_1_2012
    new_month = Month.new(1, 2012)
    assert_equal(31, new_month.month_days)
  end

  def test_04_test_days_in_month_2_2012
    new_month = Month.new(2, 2012)
    assert_equal(29, new_month.month_days)
  end

  def test_05_test_days_in_month_9_2012
    new_month = Month.new(9, 2012)
    assert_equal(30, new_month.month_days)
  end

  def test_06_test_days_in_month_2_2015
    new_month = Month.new(2, 2015)
    assert_equal(28, new_month.month_days)
  end

  def test_07_test_days_in_month_2_1900
    new_month = Month.new(2, 1900)
    assert_equal(28, new_month.month_days)
  end

  def test_08_test_days_in_month_2_2000
    new_month = Month.new(2, 2000)
    assert_equal(29, new_month.month_days)
  end

end