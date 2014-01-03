require 'minitest/autorun'
require_relative 'helper'

class TestCalIntegration < MiniTest::Unit::TestCase

  def test_01_month_output_1_2012
    shell_output = `ruby cal.rb 1 2012`
    expected_output = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31#{"            "}
EOS
    assert_equal expected_output, shell_output
  end

  def test_02_month_output_2_2012
    shell_output = `ruby cal.rb 02 2012`
    expected_output = <<EOS
   February 2012
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29#{"         "}
EOS
    assert_equal expected_output, shell_output
  end

  def test_03_month_output_9_2012
    shell_output = `ruby cal.rb 9 2012`
    expected_output = <<EOS
   September 2012
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30#{"                  "}
EOS
    assert_equal expected_output, shell_output
  end


  def test_04_month_output_2_2015
    shell_output = `ruby cal.rb 02 2015`
    expected_output = <<EOS
   February 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
EOS
    assert_equal expected_output, shell_output
  end

  def test_05_month_output_2_1900
    shell_output = `ruby cal.rb 2 1900`
    expected_output = <<EOS
   February 1900
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28#{"         "}
EOS
    assert_equal expected_output, shell_output
  end

  def test_06_month_output_2_2000
    shell_output = `ruby cal.rb 2 2000`
    expected_output = <<EOS
   February 2000
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29#{"            "}
EOS
    assert_equal expected_output, shell_output
  end

  def test_07_year_output_2012
    shell_output = `ruby cal.rb 2012`
    expected_output = <<EOS
                            2012
      January               February               March
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7            1  2  3  4               1  2  3
 8  9 10 11 12 13 14   5  6  7  8  9 10 11   4  5  6  7  8  9 10
15 16 17 18 19 20 21  12 13 14 15 16 17 18  11 12 13 14 15 16 17
22 23 24 25 26 27 28  19 20 21 22 23 24 25  18 19 20 21 22 23 24
29 30 31              26 27 28 29           25 26 27 28 29 30 31

       April                  May                   June
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7         1  2  3  4  5                  1  2
 8  9 10 11 12 13 14   6  7  8  9 10 11 12   3  4  5  6  7  8  9
15 16 17 18 19 20 21  13 14 15 16 17 18 19  10 11 12 13 14 15 16
22 23 24 25 26 27 28  20 21 22 23 24 25 26  17 18 19 20 21 22 23
29 30                 27 28 29 30 31        24 25 26 27 28 29 30

        July                 August              September
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7            1  2  3  4                     1
 8  9 10 11 12 13 14   5  6  7  8  9 10 11   2  3  4  5  6  7  8
15 16 17 18 19 20 21  12 13 14 15 16 17 18   9 10 11 12 13 14 15
22 23 24 25 26 27 28  19 20 21 22 23 24 25  16 17 18 19 20 21 22
29 30 31              26 27 28 29 30 31     23 24 25 26 27 28 29
                                            30
      October               November              December
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6               1  2  3                     1
 7  8  9 10 11 12 13   4  5  6  7  8  9 10   2  3  4  5  6  7  8
14 15 16 17 18 19 20  11 12 13 14 15 16 17   9 10 11 12 13 14 15
21 22 23 24 25 26 27  18 19 20 21 22 23 24  16 17 18 19 20 21 22
28 29 30 31           25 26 27 28 29 30     23 24 25 26 27 28 29
                                            30 31
EOS
    assert_equal expected_output, shell_output
  end

  def test_08_year_output_out_of_scope_1_3001
    shell_output = `ruby cal.rb 1 3001`
    assert_raises ArgumentError do
      raise ArgumentError, 'Year out of range (1800..3000)'
    end
  end

  def test_09_year_output_out_of_scope_12_1799
    shell_output = `ruby cal.rb 12 1799`
    assert_raises ArgumentError do
      raise ArgumentError, 'Year out of range (1800..3000)'
    end
  end

  def test_10_month_output_out_of_scope_13_2012
    shell_output = `ruby cal.rb 13 2012`
    assert_raises ArgumentError do
      raise ArgumentError, 'Not a valid month number (1..12)'
    end
  end

  def test_11_month_output_out_of_scope_neg_1_2012
    shell_output = `ruby cal.rb -1 2012`
    assert_raises ArgumentError do
      raise ArgumentError, 'Not a valid month number (1..12)'
    end
  end

  def test_12_year_and_month_output_out_of_scope_14_3005
    shell_output = `ruby cal.rb 14 3005`
    assert_raises ArgumentError do
      raise ArgumentError, 'Not a valid month (1..12) and year range (1800..3000)'
    end
  end

  def test_13_more_than_2_arguments
    shell_output = `ruby cal.rb 1 2012 6`
    assert_raises ArgumentError do
      raise ArgumentError, 'Too many arguments'
    end
  end

  def test_14_no_arguments
    shell_output = `ruby cal.rb`
    assert_raises ArgumentError do
      raise ArgumentError, 'No arguments given'
    end
  end

  def test_15_non_integer_arguments
    shell_output = `ruby cal.rb * cat`
    assert_raises ArgumentError do
      raise ArgumentError, 'Not a valid month number (1..12)'
    end
  end

  def test_16_non_integer_argument
    shell_output = `ruby cal.rb *`
    assert_raises ArgumentError do
      raise ArgumentError, 'Year out of range (1800..3000)'
    end
  end

end