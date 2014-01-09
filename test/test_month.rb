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

  def test_07_test_days_in_month_1_2012
    new_month = Month.new(1, 2012)
    assert_equal(31, new_month.num_month_days)
  end

  def test_08_test_days_in_month_2_2012
    new_month = Month.new(2, 2012)
    assert_equal(29, new_month.num_month_days)
  end

  def test_09_test_days_in_month_9_2012
    new_month = Month.new(9, 2012)
    assert_equal(30, new_month.num_month_days)
  end

  def test_10_test_days_in_month_2_2015
    new_month = Month.new(2, 2015)
    assert_equal(28, new_month.num_month_days)
  end

  def test_11_test_days_in_month_2_1900
    new_month = Month.new(2, 1900)
    assert_equal(28, new_month.num_month_days)
  end

  def test_12_test_days_in_month_2_2000
    new_month = Month.new(2, 2000)
    assert_equal(29, new_month.num_month_days)
  end

  def test_13_formatted_month_array_1_2012
    new_month = Month.new(1, 2012)
    num_days = new_month.num_month_days
    assert_equal([' 1', ' 2', ' 3', ' 4', ' 5', ' 6', ' 7', ' 8', ' 9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31'],
      new_month.month_array)
  end

  def test_14_formatted_month_array_2_2012
    new_month = Month.new(2, 2000)
    num_days = new_month.num_month_days
    assert_equal([' 1', ' 2', ' 3', ' 4', ' 5', ' 6', ' 7', ' 8', ' 9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29'],
      new_month.month_array)
  end

  def test_15_formatted_month_array_1_2012
    new_month = Month.new(2, 1900)
    num_days = new_month.num_month_days
    assert_equal([' 1', ' 2', ' 3', ' 4', ' 5', ' 6', ' 7', ' 8', ' 9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28'],
      new_month.month_array)
  end
  def test_16_formatted_month_array_1_2012
    new_month = Month.new(9, 2012)
    num_days = new_month.num_month_days
    assert_equal([' 1', ' 2', ' 3', ' 4', ' 5', ' 6', ' 7', ' 8', ' 9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30'],
      new_month.month_array)
  end

  def test_17_test_year_head_rows_January_2012
    new_month = Month.new(1, 2012)
    assert_equal([['      January       '], ['Su Mo Tu We Th Fr Sa']], new_month.head_rows(true))
  end

  def test_18_test_year_head_rows_May_2012
    new_month = Month.new(5, 2012)
    assert_equal([['        May         '], ['Su Mo Tu We Th Fr Sa']], new_month.head_rows(true))
  end

  def test_19_test_month_head_rows_January_2012
    new_month = Month.new(1, 2012)
    assert_equal([['    January 2012'], ['Su Mo Tu We Th Fr Sa']], new_month.head_rows(false))
  end

  def test_20_test_month_head_rows_May_2012
    new_month = Month.new(5, 2012)
    assert_equal([['      May 2012'], ['Su Mo Tu We Th Fr Sa']], new_month.head_rows(false))
  end

  def test_21_month_constructor_9_2012
    new_month = Month.new(9, 2012)
    assert_equal(
["     September      ",
"Su Mo Tu We Th Fr Sa",
"                   1",
" 2  3  4  5  6  7  8",
" 9 10 11 12 13 14 15",
"16 17 18 19 20 21 22",
"23 24 25 26 27 28 29",
"30                  "],
      new_month.month_constructor(true))
  end

  def test_22_month_constructor_1_2012
    new_month = Month.new(1, 2012)
    assert_equal(
["      January       ",
"Su Mo Tu We Th Fr Sa",
" 1  2  3  4  5  6  7",
" 8  9 10 11 12 13 14",
"15 16 17 18 19 20 21",
"22 23 24 25 26 27 28",
"29 30 31            ",
"                    "],
      new_month.month_constructor(true))
  end

  def test_23_month_constructor_5_2012
    new_month = Month.new(5, 2012)
    assert_equal(
["        May         ",
"Su Mo Tu We Th Fr Sa",
"       1  2  3  4  5",
" 6  7  8  9 10 11 12",
"13 14 15 16 17 18 19",
"20 21 22 23 24 25 26",
"27 28 29 30 31      ",
"                    "],
      new_month.month_constructor(true))
  end

  def test_24_month_constructor_2_2000
    new_month = Month.new(2, 2000)
    assert_equal(
["   February 2000",
"Su Mo Tu We Th Fr Sa",
"       1  2  3  4  5",
" 6  7  8  9 10 11 12",
"13 14 15 16 17 18 19",
"20 21 22 23 24 25 26",
"27 28 29            ",
"                    "],
      new_month.month_constructor(false))
  end

  def test_25_month_constructor_2_1900
    new_month = Month.new(2, 1900)
    assert_equal(
["   February 1900",
"Su Mo Tu We Th Fr Sa",
"             1  2  3",
" 4  5  6  7  8  9 10",
"11 12 13 14 15 16 17",
"18 19 20 21 22 23 24",
"25 26 27 28         ",
"                    "],
      new_month.month_constructor(false))
  end

  def test_26_month_constructor_2_2015
    new_month = Month.new(2, 2015)
    assert_equal(
["      February      ",
"Su Mo Tu We Th Fr Sa",
" 1  2  3  4  5  6  7",
" 8  9 10 11 12 13 14",
"15 16 17 18 19 20 21",
"22 23 24 25 26 27 28",
"                    ",
"                    "],
      new_month.month_constructor(true))
  end

  def test_27_month_constructor_12_2012
    new_month = Month.new(12, 2012)
    assert_equal(
["      December      ",
"Su Mo Tu We Th Fr Sa",
"                   1",
" 2  3  4  5  6  7  8",
" 9 10 11 12 13 14 15",
"16 17 18 19 20 21 22",
"23 24 25 26 27 28 29",
"30 31               "],
      new_month.month_constructor(true))
  end

  def test_28_month_constructor_9_2012
    new_month = Month.new(9, 2012)
    assert_equal(
["   September 2012",
"Su Mo Tu We Th Fr Sa",
"                   1",
" 2  3  4  5  6  7  8",
" 9 10 11 12 13 14 15",
"16 17 18 19 20 21 22",
"23 24 25 26 27 28 29",
"30                  ",
"                    "],
      new_month.month_constructor(false))
  end

  def test_29_month_constructor_12_2015
    new_month = Month.new(12, 2015)
    assert_equal(
["      December      ",
"Su Mo Tu We Th Fr Sa",
"       1  2  3  4  5",
" 6  7  8  9 10 11 12",
"13 14 15 16 17 18 19",
"20 21 22 23 24 25 26",
"27 28 29 30 31      ",
"                    "],
      new_month.month_constructor(true))
  end

end