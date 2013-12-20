require 'month'
require 'minitest/autorun'

class TestMonth < MiniTest::Unit::TestCase
  def test_month_has_zeller_method
    # Month.test_method("arg")
  end

  def test_01_test_zellers_base_case_01_2012
    month_year_request = '01 2012'
    month_first_day = Month.zeller(month_year_request)
    assert_equal('Sunday', month_first_day)
  end

  def test_02_test_zellers_leap_year_02_2012
    month_year_request = '02 2012'
    month_first_day = Month.zeller(month_year_request)
    assert_equal('Wednesday', month_first_day)
  end

  def test_03_test_zellers_6_week_month_09_2012
    month_year_request = '09 2012'
    month_first_day = Month.zeller(month_year_request)
    assert_equal('Saturday', month_first_day)
  end

  def test_04_test_zellers_4_week_month_02_2015
    month_year_request = '02 2015'
    month_first_day = Month.zeller(month_year_request)
    assert_equal('Sunday', month_first_day)
  end

  def test_05_test_zellers_non_leap_century_02_1900
    month_year_request = '02 1900'
    month_first_day = Month.zeller(month_year_request)
    assert_equal('Thursday', month_first_day)
  end

  def test_06_test_zellers_leap_century_02_2000
    month_year_request = '02 2000'
    month_first_day = Month.zeller(month_year_request)
    assert_equal('Tuesday', month_first_day)
  end

  def test_07_test_zellers_outside_of_scope_05_3005
    month_year_request = '05 3005'
    month_first_day = Month.zeller(month_year_request)
    assert_raises ArgumentError do
      #########what goes here???#############
    end
  end

  def test_08_test_zellers_no_arguments
    month_year_request = ''
    month_first_day = Month.zeller(month_year_request)
    assert_raises ArgumentError do
      #########what goes here???#############
    end
  end


end