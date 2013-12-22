require 'zeller'
require 'minitest/autorun'

class TestZeller < MiniTest::Unit::TestCase

  # def test_01_test_zellers_base_case_01_2012
  #   new_zeller = Zeller.new
  #   assert_equal(1, new_zeller.zeller(1, 2012))
  # end

  # def test_02_test_zellers_leap_year_02_2012
  #   new_zeller = Zeller.new
  #   assert_equal(4, new_zeller.zeller(2, 2012))
  # end

  # def test_03_test_zellers_6_week_month_09_2012
  #   new_zeller = Zeller.new
  #   assert_equal(0, new_zeller.zeller(9, 2012))
  # end

  # def test_04_test_zellers_4_week_month_02_2015
  #   new_zeller = Zeller.new
  #   assert_equal(1, new_zeller.zeller(2, 2015))
  # end

  # def test_05_test_zellers_non_leap_century_02_1900
  #   new_zeller = Zeller.new
  #   assert_equal(5, new_zeller.zeller(2, 1900))
  # end

  # def test_06_test_zellers_leap_century_02_2000
  #   new_zeller = Zeller.new
  #   assert_equal(3, new_zeller.zeller(2, 2000))
  # end

  # def test_07_test_zellers_outside_of_scope_05_3005
  #   new_zeller = Zeller.new
  #   assert_raises ArgumentError do
  #     new_zeller.zeller(5, 3005)
  #   end
  # end

  # def test_08_test_zellers_outside_of_scope_05_1799
  #   new_zeller = Zeller.new
  #   #b/c passing in via argv
  #   assert_raises ArgumentError do
  #     new_zeller.zeller(5, 1799)
  #   end
  # end

  # def test_09_test_zellers_no_arguments
  #   new_zeller = Zeller.new
  #   assert_raises ArgumentError do
  #     new_zeller.zeller('')
  #   end
  # end

end