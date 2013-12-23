require 'month'
require 'minitest/autorun'

class TestMonth < MiniTest::Unit::TestCase

  def test_01_test_zellers_base_case_01_2012
    new_month = Month.new(1, 2012)
    assert_equal(1, new_month.zeller)
  end

  def test_02_test_zellers_leap_year_02_2012
    new_month = Month.new(2, 2012)
    assert_equal(4, new_month.zeller)
  end

  def test_03_test_zellers_6_week_month_09_2012
    new_month = Month.new(9, 2012)
    assert_equal(0, new_month.zeller)
  end

  def test_04_test_zellers_4_week_month_02_2015
    new_month = Month.new(2, 2015)
    assert_equal(1, new_month.zeller)
  end

  def test_05_test_zellers_non_leap_century_02_1900
    new_month = Month.new(2, 1900)
    assert_equal(5, new_month.zeller)
  end

  def test_06_test_zellers_leap_century_02_2000
    new_month = Month.new(2, 2000)
    assert_equal(3, new_month.zeller)
  end

  # def test_07_test_zellers_non_leap_year_arg
  #   new_month = Month.new(1900)
  #   assert_equal(2, new_month.zeller)
  # end

  # def test_08_test_zellers_leap_year_arg
  #   new_month = Month.new(2000)
  #   assert_equal(0, new_month.zeller)
  # end

  def test_09_test_head_rows_January_2012
    new_month = Month.new(1, 2012)
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
EOS
    assert_equal(expected.chomp, new_month.head_rows)
  end

  def test_10_test_head_rows_May_2012
    new_month = Month.new(5, 2012)
    expected = <<EOS
      May 2012
Su Mo Tu We Th Fr Sa
EOS
    assert_equal(expected.chomp, new_month.head_rows)
  end

  def test_11_test_days_in_month_1_2012
    new_month = Month.new(1, 2012)
    assert_equal(31, new_month.month_days)
  end

  def test_12_test_days_in_month_2_2012
    new_month = Month.new(2, 2012)
    assert_equal(29, new_month.month_days)
  end

  def test_13_test_days_in_month_9_2012
    new_month = Month.new(9, 2012)
    assert_equal(30, new_month.month_days)
  end

  def test_14_test_days_in_month_2_2015
    new_month = Month.new(2, 2015)
    assert_equal(28, new_month.month_days)
  end

  def test_15_test_days_in_month_2_1900
    new_month = Month.new(2, 1900)
    assert_equal(28, new_month.month_days)
  end

  def test_16_test_days_in_month_2_2000
    new_month = Month.new(2, 2000)
    assert_equal(29, new_month.month_days)
  end

  def test_17_formatted_month_array_1_2012
    new_month = Month.new(1, 2012)
    num_days = new_month.month_days
    assert_equal([' 1', ' 2', ' 3', ' 4', ' 5', ' 6', ' 7', ' 8', ' 9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31'],
      new_month.month_array)
  end

  def test_18_formatted_month_array_2_2012
    new_month = Month.new(2, 2000)
    num_days = new_month.month_days
    assert_equal([' 1', ' 2', ' 3', ' 4', ' 5', ' 6', ' 7', ' 8', ' 9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29'],
      new_month.month_array)
  end

  def test_19_formatted_month_array_1_2012
    new_month = Month.new(2, 1900)
    num_days = new_month.month_days
    assert_equal([' 1', ' 2', ' 3', ' 4', ' 5', ' 6', ' 7', ' 8', ' 9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28'],
      new_month.month_array)
  end

  def test_20_formatted_month_array_1_2012
    new_month = Month.new(9, 2012)
    num_days = new_month.month_days
    assert_equal([' 1', ' 2', ' 3', ' 4', ' 5', ' 6', ' 7', ' 8', ' 9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30'],
      new_month.month_array)
  end

  def test_21_test_printing_first_week_1_2012
    new_month = Month.new(1, 2012)
    expected = <<EOS
 1  2  3  4  5  6  7
EOS
    assert_equal(expected.chomp, new_month.weeks)
  end

  def test_22_test_printing_first_week_5_2012
    new_month = Month.new(5, 2012)
    expected = <<EOS
       1  2  3  4  5
EOS
    assert_equal(expected.chomp, new_month.weeks)
  end

  def test_23_test_printing_first_week_3_2012
    new_month = Month.new(3, 2012)
    expected = <<EOS
             1  2  3
EOS
    assert_equal(expected.chomp, new_month.weeks)
  end

  def test_24_test_printing_first_week_3_2012
    new_month = Month.new(10, 2012)
    expected = <<EOS
    1  2  3  4  5  6
EOS
    assert_equal(expected.chomp, new_month.weeks)
  end




end