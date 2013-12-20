require_relative 'helper'

class TestCalIntegration < MiniTest::Unit::TestCase
  require 'year' #WHY DO I NEED TO PUT THIS HERE?!?

  def test_01_cal_integration
#     shell_output = 'ruby year.rb, ??????what goes here?????'
#     expected_output = <<EOS
#    February 2012
# Su Mo Tu We Th Fr Sa
#           1  2  3  4
#  5  6  7  8  9 10 11
# 12 13 14 15 16 17 18
# 19 20 21 22 23 24 25
# 26 27 28 29
# EOS
#     assert_equal ('cal 02 2012', 'ruby year.rb 02 2012')
  end
end