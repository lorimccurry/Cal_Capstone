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

#   def test_09_test_month_head_rows_January_2012
#     new_month = Month.new(1, 2012)
#     expected = <<EOS
#     January 2012
# Su Mo Tu We Th Fr Sa
# EOS
#     assert_equal(expected.chomp, new_month.head_rows(false))
#   end

#   def test_10_test_month_head_rows_May_2012
#     new_month = Month.new(5, 2012)
#     expected = <<EOS
#       May 2012
# Su Mo Tu We Th Fr Sa
# EOS
#     assert_equal(expected.chomp, new_month.head_rows(false))
#   end

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

#   def test_21_test_printing_first_week_1_2012
#     new_month = Month.new(1, 2012)
#     day_one = new_month.convert_zeller
#     add_space = "  "
#     day_array = new_month.month_array
#     expected = <<EOS
#  1  2  3  4  5  6  7
# EOS
#     assert_equal(expected.chomp, new_month.first_week(day_one, add_space, day_array))
#   end

#   def test_22_test_printing_first_week_5_2012
#     new_month = Month.new(5, 2012)
#     day_one = new_month.convert_zeller
#     add_space = "  "
#     day_array = new_month.month_array
#     expected = <<EOS
#        1  2  3  4  5
# EOS
#     assert_equal(expected.chomp, new_month.first_week(day_one, add_space, day_array))
#   end

#   def test_23_test_printing_first_week_3_2012
#     new_month = Month.new(3, 2012)
#     day_one = new_month.convert_zeller
#     add_space = "  "
#     day_array = new_month.month_array
#     expected = <<EOS
#              1  2  3
# EOS
#     assert_equal(expected.chomp, new_month.first_week(day_one, add_space, day_array))
#   end

#   def test_24_test_printing_first_week_10_2012
#     new_month = Month.new(10, 2012)
#     day_one = new_month.convert_zeller
#     add_space = "  "
#     day_array = new_month.month_array
#     expected = <<EOS
#     1  2  3  4  5  6
# EOS
#     assert_equal(expected.chomp, new_month.first_week(day_one, add_space, day_array))
#   end

#   def test_25_test_printing_first_week_9_2012
#     new_month = Month.new(9, 2012)
#     day_one = new_month.convert_zeller
#     add_space = "  "
#     day_array = new_month.month_array
#     expected = <<EOS
#                    1
# EOS
#     assert_equal(expected.chomp, new_month.first_week(day_one, add_space, day_array))
#   end

#   def test_26_test_printing_middle_weeks_1_2012
#     new_month = Month.new(1, 2012)
#     day_one = new_month.convert_zeller
#     add_space = "  "
#     day_array = new_month.month_array
#     new_month.first_week(day_one, add_space, day_array)
#     expected = <<EOS
#  8  9 10 11 12 13 14
# 15 16 17 18 19 20 21
# 22 23 24 25 26 27 28
# EOS
#     assert_equal(expected.chomp, new_month.middle_weeks(day_array))
#   end

#   def test_27_test_printing_middle_weeks_5_2012
#     new_month = Month.new(5, 2012)
#     day_one = new_month.convert_zeller
#     add_space = "  "
#     day_array = new_month.month_array
#     new_month.first_week(day_one, add_space, day_array)
#     expected = <<EOS
#  6  7  8  9 10 11 12
# 13 14 15 16 17 18 19
# 20 21 22 23 24 25 26
# EOS
#     assert_equal(expected.chomp, new_month.middle_weeks(day_array))
#   end

#   def test_28_test_printing_middle_weeks_3_2012
#     new_month = Month.new(3, 2012)
#     day_one = new_month.convert_zeller
#     add_space = "  "
#     day_array = new_month.month_array
#     new_month.first_week(day_one, add_space, day_array)
#     expected = <<EOS
#  4  5  6  7  8  9 10
# 11 12 13 14 15 16 17
# 18 19 20 21 22 23 24
# 25 26 27 28 29 30 31
# EOS
#     assert_equal(expected.chomp, new_month.middle_weeks(day_array))
#   end

#   def test_29_test_printing_first_and_middle_weeks_9_2012
#     new_month = Month.new(9, 2012)
#     day_one = new_month.convert_zeller
#     add_space = "  "
#     day_array = new_month.month_array
#     new_month.first_week(day_one, add_space, day_array)
#     expected = <<EOS
#  2  3  4  5  6  7  8
#  9 10 11 12 13 14 15
# 16 17 18 19 20 21 22
# 23 24 25 26 27 28 29
# EOS
#     assert_equal(expected.chomp, new_month.middle_weeks(day_array))
#   end

#   def test_30_test_printing_last_week_1_2012
#     new_month = Month.new(1, 2012)
#     day_one = new_month.convert_zeller
#     add_space = "  "
#     day_array = new_month.month_array
#     new_month.first_week(day_one, add_space, day_array)
#     new_month.middle_weeks(day_array)
#     expected = <<EOS
# 29 30 31#{"            "}
# EOS
#     assert_equal(expected.chomp, new_month.last_week(day_array, add_space))
#   end

#   def test_31_test_printing_last_week_5_2012
#     new_month = Month.new(5, 2012)
#     day_one = new_month.convert_zeller
#     add_space = "  "
#     day_array = new_month.month_array
#     new_month.first_week(day_one, add_space, day_array)
#     new_month.middle_weeks(day_array)
#     expected = <<EOS
# 27 28 29 30 31#{"      "}
# EOS
#     assert_equal(expected.chomp, new_month.last_week(day_array, add_space))
#   end

#   def test_32_test_printing_last_week_8_2012
#     new_month = Month.new(8, 2012)
#     day_one = new_month.convert_zeller
#     add_space = "  "
#     day_array = new_month.month_array
#     new_month.first_week(day_one, add_space, day_array)
#     new_month.middle_weeks(day_array)
#     expected = <<EOS
# 26 27 28 29 30 31#{"   "}
# EOS
#     assert_equal(expected.chomp, new_month.last_week(day_array, add_space))
#   end

#   def test_33_test_printing_last_week_10_2012
#     new_month = Month.new(10, 2012)
#     day_one = new_month.convert_zeller
#     add_space = "  "
#     day_array = new_month.month_array
#     new_month.first_week(day_one, add_space, day_array)
#     new_month.middle_weeks(day_array)
#     expected = <<EOS
# 28 29 30 31#{"         "}
# EOS
#     assert_equal(expected.chomp, new_month.last_week(day_array, add_space))
#   end

#   def test_34_test_month_printing_1_2012
#     new_month = Month.new(1, 2012)
#     expected = <<EOS
#  1  2  3  4  5  6  7
#  8  9 10 11 12 13 14
# 15 16 17 18 19 20 21
# 22 23 24 25 26 27 28
# 29 30 31#{"            "}
# EOS
#     assert_equal(expected.chomp, new_month.weeks)
#   end

#   def test_35_test_month_printing_5_2012
#     new_month = Month.new(5, 2012)
#     expected = <<EOS
#        1  2  3  4  5
#  6  7  8  9 10 11 12
# 13 14 15 16 17 18 19
# 20 21 22 23 24 25 26
# 27 28 29 30 31#{"      "}
# EOS
#     assert_equal(expected.chomp, new_month.weeks)
#   end

#   def test_36_test_month_printing_2_2012
#     new_month = Month.new(2, 2012)
#     expected = <<EOS
#           1  2  3  4
#  5  6  7  8  9 10 11
# 12 13 14 15 16 17 18
# 19 20 21 22 23 24 25
# 26 27 28 29#{"         "}
# EOS
#     assert_equal(expected.chomp, new_month.weeks)
#   end

#   def test_37_test_month_printing_9_2012
#     new_month = Month.new(9, 2012)
#     expected = <<EOS
#                    1
#  2  3  4  5  6  7  8
#  9 10 11 12 13 14 15
# 16 17 18 19 20 21 22
# 23 24 25 26 27 28 29
# 30#{"                  "}
# EOS
#     assert_equal(expected.chomp, new_month.weeks)
#   end

#   def test_38_test_month_printing_2_2015
#     new_month = Month.new(2, 2015)
#     expected = <<EOS
#  1  2  3  4  5  6  7
#  8  9 10 11 12 13 14
# 15 16 17 18 19 20 21
# 22 23 24 25 26 27 28
# EOS
#     assert_equal(expected.chomp, new_month.weeks)
#   end

#   def test_39_test_month_printing_2_1900
#     new_month = Month.new(2, 1900)
#     expected = <<EOS
#              1  2  3
#  4  5  6  7  8  9 10
# 11 12 13 14 15 16 17
# 18 19 20 21 22 23 24
# 25 26 27 28#{"         "}
# EOS
#     assert_equal(expected.chomp, new_month.weeks)
#   end

#   def test_40_test_month_printing_2_1900
#     new_month = Month.new(2, 2000)
#     expected = <<EOS
#        1  2  3  4  5
#  6  7  8  9 10 11 12
# 13 14 15 16 17 18 19
# 20 21 22 23 24 25 26
# 27 28 29#{"            "}
# EOS
#     assert_equal(expected.chomp, new_month.weeks)
#   end

#   def test_41_test_month_head_and_weeks_printing_1_2012
#     new_month = Month.new(1, 2012)
#     expected = <<EOS
#     January 2012
# Su Mo Tu We Th Fr Sa
#  1  2  3  4  5  6  7
#  8  9 10 11 12 13 14
# 15 16 17 18 19 20 21
# 22 23 24 25 26 27 28
# 29 30 31#{"            "}
# EOS
#     assert_equal(expected.chomp, new_month.month_all(false))
#   end

#   def test_42_test_month_head_and_weeks_printing_5_2012
#     new_month = Month.new(5, 2012)
#     expected = <<EOS
#       May 2012
# Su Mo Tu We Th Fr Sa
#        1  2  3  4  5
#  6  7  8  9 10 11 12
# 13 14 15 16 17 18 19
# 20 21 22 23 24 25 26
# 27 28 29 30 31#{"      "}
# EOS
#     assert_equal(expected.chomp, new_month.month_all(false))
#   end

#   def test_43_test_month_head_and_weeks_printing_2_2012
#     new_month = Month.new(2, 2012)
#     expected = <<EOS
#    February 2012
# Su Mo Tu We Th Fr Sa
#           1  2  3  4
#  5  6  7  8  9 10 11
# 12 13 14 15 16 17 18
# 19 20 21 22 23 24 25
# 26 27 28 29#{"         "}
# EOS
#     assert_equal(expected.chomp, new_month.month_all(false))
#   end

#   def test_44_test_month_head_and_weeks_printing_9_2012
#     new_month = Month.new(9, 2012)
#     expected = <<EOS
#    September 2012
# Su Mo Tu We Th Fr Sa
#                    1
#  2  3  4  5  6  7  8
#  9 10 11 12 13 14 15
# 16 17 18 19 20 21 22
# 23 24 25 26 27 28 29
# 30#{"                  "}
# EOS
#     assert_equal(expected.chomp, new_month.month_all(false))
#   end

#   def test_45_test_month_head_and_weeks_printing_2_2015
#     new_month = Month.new(2, 2015)
#     expected = <<EOS
#    February 2015
# Su Mo Tu We Th Fr Sa
#  1  2  3  4  5  6  7
#  8  9 10 11 12 13 14
# 15 16 17 18 19 20 21
# 22 23 24 25 26 27 28
# EOS
#     assert_equal(expected.chomp, new_month.month_all(false))
#   end

#   def test_46_test_month_head_and_weeks_printing_2_1900
#     new_month = Month.new(2, 1900)
#     expected = <<EOS
#    February 1900
# Su Mo Tu We Th Fr Sa
#              1  2  3
#  4  5  6  7  8  9 10
# 11 12 13 14 15 16 17
# 18 19 20 21 22 23 24
# 25 26 27 28#{"         "}
# EOS
#     assert_equal(expected.chomp, new_month.month_all(false))
#   end

#   def test_47_test_month_head_and_weeks_printing_2_2000
#     new_month = Month.new(2, 2000)
#     expected = <<EOS
#    February 2000
# Su Mo Tu We Th Fr Sa
#        1  2  3  4  5
#  6  7  8  9 10 11 12
# 13 14 15 16 17 18 19
# 20 21 22 23 24 25 26
# 27 28 29#{"            "}
# EOS
#     assert_equal(expected.chomp, new_month.month_all(false))
#   end

#   def test_48_test_year_head_rows_January_2012
#     new_month = Month.new(1, 2012)
#     expected = <<EOS
#       January
# Su Mo Tu We Th Fr Sa
# EOS
#     assert_equal(expected.chomp, new_month.head_rows(true))
#   end

#   def test_49_test_year_head_rows_May_2012
#     new_month = Month.new(5, 2012)
#     expected = <<EOS
#         May
# Su Mo Tu We Th Fr Sa
# EOS
#     assert_equal(expected.chomp, new_month.head_rows(true))
#   end

#   def test_50_test_year_head_and_weeks_printing_1_2012
#     new_month = Month.new(1, 2012)
#     expected = <<EOS
#       January
# Su Mo Tu We Th Fr Sa
#  1  2  3  4  5  6  7
#  8  9 10 11 12 13 14
# 15 16 17 18 19 20 21
# 22 23 24 25 26 27 28
# 29 30 31#{"            "}
# EOS
#     assert_equal(expected.chomp, new_month.month_all(true))
#   end

#   def test_51_test_year_head_and_weeks_printing_5_2012
#     new_month = Month.new(5, 2012)
#     expected = <<EOS
#         May
# Su Mo Tu We Th Fr Sa
#        1  2  3  4  5
#  6  7  8  9 10 11 12
# 13 14 15 16 17 18 19
# 20 21 22 23 24 25 26
# 27 28 29 30 31#{"      "}
# EOS
#     assert_equal(expected.chomp, new_month.month_all(true))
#   end

#   def test_52_test_year_head_and_weeks_printing_2_2012
#     new_month = Month.new(2, 2012)
#     expected = <<EOS
#       February
# Su Mo Tu We Th Fr Sa
#           1  2  3  4
#  5  6  7  8  9 10 11
# 12 13 14 15 16 17 18
# 19 20 21 22 23 24 25
# 26 27 28 29#{"         "}
# EOS
#     assert_equal(expected.chomp, new_month.month_all(true))
#   end

#   def test_53_test_year_head_and_weeks_printing_9_2012
#     new_month = Month.new(9, 2012)
#     expected = <<EOS
#      September
# Su Mo Tu We Th Fr Sa
#                    1
#  2  3  4  5  6  7  8
#  9 10 11 12 13 14 15
# 16 17 18 19 20 21 22
# 23 24 25 26 27 28 29
# 30#{"                  "}
# EOS
#     assert_equal(expected.chomp, new_month.month_all(true))
#   end

#   def test_54_test_year_head_and_weeks_printing_2_2015
#     new_month = Month.new(2, 2015)
#     expected = <<EOS
#       February
# Su Mo Tu We Th Fr Sa
#  1  2  3  4  5  6  7
#  8  9 10 11 12 13 14
# 15 16 17 18 19 20 21
# 22 23 24 25 26 27 28
# EOS
#     assert_equal(expected.chomp, new_month.month_all(true))
#   end

#   def test_55_test_year_head_and_weeks_printing_2_1900
#     new_month = Month.new(2, 1900)
#     expected = <<EOS
#       February
# Su Mo Tu We Th Fr Sa
#              1  2  3
#  4  5  6  7  8  9 10
# 11 12 13 14 15 16 17
# 18 19 20 21 22 23 24
# 25 26 27 28#{"         "}
# EOS
#     assert_equal(expected.chomp, new_month.month_all(true))
#   end

#   def test_56_test_year_head_and_weeks_printing_2_2000
#     new_month = Month.new(2, 2000)
#     expected = <<EOS
#       February
# Su Mo Tu We Th Fr Sa
#        1  2  3  4  5
#  6  7  8  9 10 11 12
# 13 14 15 16 17 18 19
# 20 21 22 23 24 25 26
# 27 28 29#{"            "}
# EOS
#     assert_equal(expected.chomp, new_month.month_all(true))
#   end

  def test_57_test_year_head_rows_January_2012
    new_month = Month.new(1, 2012)
    assert_equal([['      January       '], ['Su Mo Tu We Th Fr Sa']], new_month.head_rows(true))
  end

  def test_58_test_year_head_rows_May_2012
    new_month = Month.new(5, 2012)
    assert_equal([['        May         '], ['Su Mo Tu We Th Fr Sa']], new_month.head_rows(true))
  end

  def test_59_test_month_head_rows_January_2012
    new_month = Month.new(1, 2012)
    assert_equal([['    January 2012'], ['Su Mo Tu We Th Fr Sa']], new_month.head_rows(false))
  end

  def test_60_test_month_head_rows_May_2012
    new_month = Month.new(5, 2012)
    assert_equal([['      May 2012'], ['Su Mo Tu We Th Fr Sa']], new_month.head_rows(false))
  end

  def test_61_weeks_strings_9_2012
    new_month = Month.new(9, 2012)
    assert_equal(["     September", "Su Mo Tu We Th Fr Sa", "                   1", " 2  3  4  5  6  7  8", " 9 10 11 12 13 14 15", "16 17 18 19 20 21 22", "23 24 25 26 27 28 29", "30"],
      new_month.week_strings(true))
  end

  def test_62_weeks_strings_1_2012
    new_month = Month.new(1, 2012)
    assert_equal(["      January       ", "Su Mo Tu We Th Fr Sa", " 1  2  3  4  5  6  7", " 8  9 10 11 12 13 14", "15 16 17 18 19 20 21", "22 23 24 25 26 27 28", "29 30 31            ","                    "],
      new_month.week_strings(true))
  end

  def test_63_weeks_strings_5_2012
    new_month = Month.new(5, 2012)
    assert_equal(["        May         ", "Su Mo Tu We Th Fr Sa", "       1  2  3  4  5", " 6  7  8  9 10 11 12", "13 14 15 16 17 18 19", "20 21 22 23 24 25 26", "27 28 29 30 31      ","                    "],
      new_month.week_strings(true))
  end

  def test_64_weeks_strings_2_2000
    new_month = Month.new(2, 2000)
    assert_equal(["   February 2000", "Su Mo Tu We Th Fr Sa", "       1  2  3  4  5", " 6  7  8  9 10 11 12", "13 14 15 16 17 18 19", "20 21 22 23 24 25 26", "27 28 29            "],
      new_month.week_strings(false))
  end

  def test_65_weeks_strings_2_1900
    new_month = Month.new(2, 1900)
    assert_equal(["   February 1900", "Su Mo Tu We Th Fr Sa", "             1  2  3", " 4  5  6  7  8  9 10", "11 12 13 14 15 16 17", "18 19 20 21 22 23 24", "25 26 27 28         "],
      new_month.week_strings(false))
  end

  def test_66_weeks_strings_2_2015
    new_month = Month.new(2, 2015)
    assert_equal(["      February      ", "Su Mo Tu We Th Fr Sa", " 1  2  3  4  5  6  7", " 8  9 10 11 12 13 14", "15 16 17 18 19 20 21", "22 23 24 25 26 27 28"],
      new_month.week_strings(true))
  end

  def test_67_weeks_strings_12_2012
    new_month = Month.new(12, 2012)
    assert_equal(["      December", "Su Mo Tu We Th Fr Sa", "                   1", " 2  3  4  5  6  7  8", " 9 10 11 12 13 14 15", "16 17 18 19 20 21 22", "23 24 25 26 27 28 29", "30 31"],
      new_month.week_strings(true))
  end
end