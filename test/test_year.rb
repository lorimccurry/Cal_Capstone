require 'year'
require 'month'

require 'minitest/autorun'


class TestYear < MiniTest::Unit::TestCase
  # def test_year_has_year_method
  #   Year.test_method("arg")
  # end

#   def test_01_year_number_header
#     new_year = Year.new(2012)
#     expected = <<EOS
#                             2012
# EOS
#     assert_equal(expected.chomp, new_year.year_head)
#   end

#   def test_02_year_number_header
#     new_year = Year.new(1800)
#     expected = <<EOS
#                             1800
# EOS
#     assert_equal(expected.chomp, new_year.year_head)
#   end

  def test_01_year_number_header
    new_year = Year.new(2012)
    assert_equal(["2012"], new_year.year_head)
  end

  def test_02_year_number_header
    new_year = Year.new(1800)
    assert_equal(["1800"], new_year.year_head)
  end

  def test_03_year_formatted_for_printing
    new_year = Year.new(2012)
    expected =
["      January               February               March        ",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
" 1  2  3  4  5  6  7            1  2  3  4               1  2  3",
" 8  9 10 11 12 13 14   5  6  7  8  9 10 11   4  5  6  7  8  9 10",
"15 16 17 18 19 20 21  12 13 14 15 16 17 18  11 12 13 14 15 16 17",
"22 23 24 25 26 27 28  19 20 21 22 23 24 25  18 19 20 21 22 23 24",
"29 30 31              26 27 28 29           25 26 27 28 29 30 31",
"       April                  May                   June        ",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
" 1  2  3  4  5  6  7         1  2  3  4  5                  1  2",
" 8  9 10 11 12 13 14   6  7  8  9 10 11 12   3  4  5  6  7  8  9",
"15 16 17 18 19 20 21  13 14 15 16 17 18 19  10 11 12 13 14 15 16",
"22 23 24 25 26 27 28  20 21 22 23 24 25 26  17 18 19 20 21 22 23",
"29 30                 27 28 29 30 31        24 25 26 27 28 29 30",
"        July                 August              September      ",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
" 1  2  3  4  5  6  7            1  2  3  4                     1",
" 8  9 10 11 12 13 14   5  6  7  8  9 10 11   2  3  4  5  6  7  8",
"15 16 17 18 19 20 21  12 13 14 15 16 17 18   9 10 11 12 13 14 15",
"22 23 24 25 26 27 28  19 20 21 22 23 24 25  16 17 18 19 20 21 22",
"29 30 31              26 27 28 29 30 31     23 24 25 26 27 28 29",
"                                            30                  ",
"      October               November              December      ",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"    1  2  3  4  5  6               1  2  3                     1",
" 7  8  9 10 11 12 13   4  5  6  7  8  9 10   2  3  4  5  6  7  8",
"14 15 16 17 18 19 20  11 12 13 14 15 16 17   9 10 11 12 13 14 15",
"21 22 23 24 25 26 27  18 19 20 21 22 23 24  16 17 18 19 20 21 22",
"28 29 30 31           25 26 27 28 29 30     23 24 25 26 27 28 29",
"                                            30 31               "]
    assert_equal(expected, new_year.year_formatted_array)
  end


#   def test_21_year_printing
#     new_year = Year.new(2012)
#     expected = <<EOS
#       January               February               March
# Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#  1  2  3  4  5  6  7            1  2  3  4               1  2  3
#  8  9 10 11 12 13 14   5  6  7  8  9 10 11   4  5  6  7  8  9 10
# 15 16 17 18 19 20 21  12 13 14 15 16 17 18  11 12 13 14 15 16 17
# 22 23 24 25 26 27 28  19 20 21 22 23 24 25  18 19 20 21 22 23 24
# 29 30 31              26 27 28 29           25 26 27 28 29 30 31


#        April                  May                   June
# Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#  1  2  3  4  5  6  7         1  2  3  4  5                  1  2
#  8  9 10 11 12 13 14   6  7  8  9 10 11 12   3  4  5  6  7  8  9
# 15 16 17 18 19 20 21  13 14 15 16 17 18 19  10 11 12 13 14 15 16
# 22 23 24 25 26 27 28  20 21 22 23 24 25 26  17 18 19 20 21 22 23
# 29 30                 27 28 29 30 31        24 25 26 27 28 29 30


#         July                 August              September
# Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#  1  2  3  4  5  6  7            1  2  3  4                     1
#  8  9 10 11 12 13 14   5  6  7  8  9 10 11   2  3  4  5  6  7  8
# 15 16 17 18 19 20 21  12 13 14 15 16 17 18   9 10 11 12 13 14 15
# 22 23 24 25 26 27 28  19 20 21 22 23 24 25  16 17 18 19 20 21 22
# 29 30 31              26 27 28 29 30 31     23 24 25 26 27 28 29
#                                             30

#       October               November              December
# Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#     1  2  3  4  5  6               1  2  3                     1
#  7  8  9 10 11 12 13   4  5  6  7  8  9 10   2  3  4  5  6  7  8
# 14 15 16 17 18 19 20  11 12 13 14 15 16 17   9 10 11 12 13 14 15
# 21 22 23 24 25 26 27  18 19 20 21 22 23 24  16 17 18 19 20 21 22
# 28 29 30 31           25 26 27 28 29 30     23 24 25 26 27 28 29
#                                             30 31
# EOS
#     assert_equal(expected.chomp, new_year.year_body)
#   end

end