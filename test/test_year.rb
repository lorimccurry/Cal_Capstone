require 'year'
require 'month'

require 'minitest/autorun'


class TestYear < MiniTest::Unit::TestCase

  def test_01_year_number_header
    new_year = Year.new(2012)
    assert_equal("                            2012", new_year.year_head)
  end

  def test_02_year_number_header
    new_year = Year.new(1800)
    assert_equal("                            1800", new_year.year_head)
  end

  def test_03_year_formatted_for_printing_2012
    new_year = Year.new(2012)
    expected =
["                            2012",
"      January               February               March",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
" 1  2  3  4  5  6  7            1  2  3  4               1  2  3",
" 8  9 10 11 12 13 14   5  6  7  8  9 10 11   4  5  6  7  8  9 10",
"15 16 17 18 19 20 21  12 13 14 15 16 17 18  11 12 13 14 15 16 17",
"22 23 24 25 26 27 28  19 20 21 22 23 24 25  18 19 20 21 22 23 24",
"29 30 31              26 27 28 29           25 26 27 28 29 30 31",
"",
"       April                  May                   June",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
" 1  2  3  4  5  6  7         1  2  3  4  5                  1  2",
" 8  9 10 11 12 13 14   6  7  8  9 10 11 12   3  4  5  6  7  8  9",
"15 16 17 18 19 20 21  13 14 15 16 17 18 19  10 11 12 13 14 15 16",
"22 23 24 25 26 27 28  20 21 22 23 24 25 26  17 18 19 20 21 22 23",
"29 30                 27 28 29 30 31        24 25 26 27 28 29 30",
"",
"        July                 August              September",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
" 1  2  3  4  5  6  7            1  2  3  4                     1",
" 8  9 10 11 12 13 14   5  6  7  8  9 10 11   2  3  4  5  6  7  8",
"15 16 17 18 19 20 21  12 13 14 15 16 17 18   9 10 11 12 13 14 15",
"22 23 24 25 26 27 28  19 20 21 22 23 24 25  16 17 18 19 20 21 22",
"29 30 31              26 27 28 29 30 31     23 24 25 26 27 28 29",
"                                            30",
"      October               November              December",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"    1  2  3  4  5  6               1  2  3                     1",
" 7  8  9 10 11 12 13   4  5  6  7  8  9 10   2  3  4  5  6  7  8",
"14 15 16 17 18 19 20  11 12 13 14 15 16 17   9 10 11 12 13 14 15",
"21 22 23 24 25 26 27  18 19 20 21 22 23 24  16 17 18 19 20 21 22",
"28 29 30 31           25 26 27 28 29 30     23 24 25 26 27 28 29",
"                                            30 31"]
    assert_equal(expected, new_year.year_formatted_array)
  end

  def test_04_year_formatted_for_printing_1900
    new_year = Year.new(1900)
    expected=
["                            1900",
"      January               February               March",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"    1  2  3  4  5  6               1  2  3               1  2  3",
" 7  8  9 10 11 12 13   4  5  6  7  8  9 10   4  5  6  7  8  9 10",
"14 15 16 17 18 19 20  11 12 13 14 15 16 17  11 12 13 14 15 16 17",
"21 22 23 24 25 26 27  18 19 20 21 22 23 24  18 19 20 21 22 23 24",
"28 29 30 31           25 26 27 28           25 26 27 28 29 30 31",
"",
"       April                  May                   June",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
" 1  2  3  4  5  6  7         1  2  3  4  5                  1  2",
" 8  9 10 11 12 13 14   6  7  8  9 10 11 12   3  4  5  6  7  8  9",
"15 16 17 18 19 20 21  13 14 15 16 17 18 19  10 11 12 13 14 15 16",
"22 23 24 25 26 27 28  20 21 22 23 24 25 26  17 18 19 20 21 22 23",
"29 30                 27 28 29 30 31        24 25 26 27 28 29 30",
"",
"        July                 August              September",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
" 1  2  3  4  5  6  7            1  2  3  4                     1",
" 8  9 10 11 12 13 14   5  6  7  8  9 10 11   2  3  4  5  6  7  8",
"15 16 17 18 19 20 21  12 13 14 15 16 17 18   9 10 11 12 13 14 15",
"22 23 24 25 26 27 28  19 20 21 22 23 24 25  16 17 18 19 20 21 22",
"29 30 31              26 27 28 29 30 31     23 24 25 26 27 28 29",
"                                            30",
"      October               November              December",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"    1  2  3  4  5  6               1  2  3                     1",
" 7  8  9 10 11 12 13   4  5  6  7  8  9 10   2  3  4  5  6  7  8",
"14 15 16 17 18 19 20  11 12 13 14 15 16 17   9 10 11 12 13 14 15",
"21 22 23 24 25 26 27  18 19 20 21 22 23 24  16 17 18 19 20 21 22",
"28 29 30 31           25 26 27 28 29 30     23 24 25 26 27 28 29",
"                                            30 31"]
    assert_equal(expected, new_year.year_formatted_array)
  end

  def test_05_year_formatted_for_printing_2000
    new_year = Year.new(2000)
    expected=
["                            2000",
"      January               February               March",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"                   1         1  2  3  4  5            1  2  3  4",
" 2  3  4  5  6  7  8   6  7  8  9 10 11 12   5  6  7  8  9 10 11",
" 9 10 11 12 13 14 15  13 14 15 16 17 18 19  12 13 14 15 16 17 18",
"16 17 18 19 20 21 22  20 21 22 23 24 25 26  19 20 21 22 23 24 25",
"23 24 25 26 27 28 29  27 28 29              26 27 28 29 30 31",
"30 31",
"       April                  May                   June",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"                   1      1  2  3  4  5  6               1  2  3",
" 2  3  4  5  6  7  8   7  8  9 10 11 12 13   4  5  6  7  8  9 10",
" 9 10 11 12 13 14 15  14 15 16 17 18 19 20  11 12 13 14 15 16 17",
"16 17 18 19 20 21 22  21 22 23 24 25 26 27  18 19 20 21 22 23 24",
"23 24 25 26 27 28 29  28 29 30 31           25 26 27 28 29 30",
"30",
"        July                 August              September",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"                   1         1  2  3  4  5                  1  2",
" 2  3  4  5  6  7  8   6  7  8  9 10 11 12   3  4  5  6  7  8  9",
" 9 10 11 12 13 14 15  13 14 15 16 17 18 19  10 11 12 13 14 15 16",
"16 17 18 19 20 21 22  20 21 22 23 24 25 26  17 18 19 20 21 22 23",
"23 24 25 26 27 28 29  27 28 29 30 31        24 25 26 27 28 29 30",
"30 31",
"      October               November              December",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
" 1  2  3  4  5  6  7            1  2  3  4                  1  2",
" 8  9 10 11 12 13 14   5  6  7  8  9 10 11   3  4  5  6  7  8  9",
"15 16 17 18 19 20 21  12 13 14 15 16 17 18  10 11 12 13 14 15 16",
"22 23 24 25 26 27 28  19 20 21 22 23 24 25  17 18 19 20 21 22 23",
"29 30 31              26 27 28 29 30        24 25 26 27 28 29 30",
"                                            31"]
    assert_equal(expected, new_year.year_formatted_array)
  end

  def test_06_year_formatted_for_printing_3000
    new_year = Year.new(3000)
    expected=
["                            3000",
"      January               February               March",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"          1  2  3  4                     1                     1",
" 5  6  7  8  9 10 11   2  3  4  5  6  7  8   2  3  4  5  6  7  8",
"12 13 14 15 16 17 18   9 10 11 12 13 14 15   9 10 11 12 13 14 15",
"19 20 21 22 23 24 25  16 17 18 19 20 21 22  16 17 18 19 20 21 22",
"26 27 28 29 30 31     23 24 25 26 27 28     23 24 25 26 27 28 29",
"                                            30 31",
"       April                  May                   June",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"       1  2  3  4  5               1  2  3   1  2  3  4  5  6  7",
" 6  7  8  9 10 11 12   4  5  6  7  8  9 10   8  9 10 11 12 13 14",
"13 14 15 16 17 18 19  11 12 13 14 15 16 17  15 16 17 18 19 20 21",
"20 21 22 23 24 25 26  18 19 20 21 22 23 24  22 23 24 25 26 27 28",
"27 28 29 30           25 26 27 28 29 30 31  29 30",
"",
"        July                 August              September",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"       1  2  3  4  5                  1  2      1  2  3  4  5  6",
" 6  7  8  9 10 11 12   3  4  5  6  7  8  9   7  8  9 10 11 12 13",
"13 14 15 16 17 18 19  10 11 12 13 14 15 16  14 15 16 17 18 19 20",
"20 21 22 23 24 25 26  17 18 19 20 21 22 23  21 22 23 24 25 26 27",
"27 28 29 30 31        24 25 26 27 28 29 30  28 29 30",
"                      31",
"      October               November              December",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"          1  2  3  4                     1      1  2  3  4  5  6",
" 5  6  7  8  9 10 11   2  3  4  5  6  7  8   7  8  9 10 11 12 13",
"12 13 14 15 16 17 18   9 10 11 12 13 14 15  14 15 16 17 18 19 20",
"19 20 21 22 23 24 25  16 17 18 19 20 21 22  21 22 23 24 25 26 27",
"26 27 28 29 30 31     23 24 25 26 27 28 29  28 29 30 31",
"                      30"]
    assert_equal(expected, new_year.year_formatted_array)
  end

  def test_07_year_formatted_for_printing_2015
    new_year = Year.new(2015)
    expected=
["                            2015",
"      January               February               March",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"             1  2  3   1  2  3  4  5  6  7   1  2  3  4  5  6  7",
" 4  5  6  7  8  9 10   8  9 10 11 12 13 14   8  9 10 11 12 13 14",
"11 12 13 14 15 16 17  15 16 17 18 19 20 21  15 16 17 18 19 20 21",
"18 19 20 21 22 23 24  22 23 24 25 26 27 28  22 23 24 25 26 27 28",
"25 26 27 28 29 30 31                        29 30 31",
"",
"       April                  May                   June",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"          1  2  3  4                  1  2      1  2  3  4  5  6",
" 5  6  7  8  9 10 11   3  4  5  6  7  8  9   7  8  9 10 11 12 13",
"12 13 14 15 16 17 18  10 11 12 13 14 15 16  14 15 16 17 18 19 20",
"19 20 21 22 23 24 25  17 18 19 20 21 22 23  21 22 23 24 25 26 27",
"26 27 28 29 30        24 25 26 27 28 29 30  28 29 30",
"                      31",
"        July                 August              September",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"          1  2  3  4                     1         1  2  3  4  5",
" 5  6  7  8  9 10 11   2  3  4  5  6  7  8   6  7  8  9 10 11 12",
"12 13 14 15 16 17 18   9 10 11 12 13 14 15  13 14 15 16 17 18 19",
"19 20 21 22 23 24 25  16 17 18 19 20 21 22  20 21 22 23 24 25 26",
"26 27 28 29 30 31     23 24 25 26 27 28 29  27 28 29 30",
"                      30 31",
"      October               November              December",
"Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa",
"             1  2  3   1  2  3  4  5  6  7         1  2  3  4  5",
" 4  5  6  7  8  9 10   8  9 10 11 12 13 14   6  7  8  9 10 11 12",
"11 12 13 14 15 16 17  15 16 17 18 19 20 21  13 14 15 16 17 18 19",
"18 19 20 21 22 23 24  22 23 24 25 26 27 28  20 21 22 23 24 25 26",
"25 26 27 28 29 30 31  29 30                 27 28 29 30 31",
""]
    assert_equal(expected, new_year.year_formatted_array)
  end

end