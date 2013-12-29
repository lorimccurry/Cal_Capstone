# require 'minitest/autorun'
# require 'cal'
require_relative 'helper'

class TestCalIntegration < MiniTest::Unit::TestCase

#test here for cal.rb stuff; test argv values
#also if year is between 1800 and 3000

  def test_01_cal_inputs
  end

  def test_000_cal_integration
#     shell_output = `ruby cal.rb 02 2012` #like the command line
#     expected_output = <<EOS
#    February 2012
# Su Mo Tu We Th Fr Sa
#           1  2  3  4
#  5  6  7  8  9 10 11
# 12 13 14 15 16 17 18
# 19 20 21 22 23 24 25
# 26 27 28 29
# EOS
#     assert_equal expected_output, shell_output
  end
end