require_relative 'zeller'

class Month

  def initialize (month, year)
    @month = month
    @year = year
  end

  def head_rows
    month_names = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    name = month_names[@month - 1]
    first_row = "#{name} #{@year}".center(20).rstrip
    second_row = "\nSu Mo Tu We Th Fr Sa"
    header = first_row + second_row
  end

  def month_days



    thirty_one = [1, 3, 5, 7, 8, 10, 12]
    thirty = [4, 6, 9, 11]

    if thirty_one.include? @month
      num_days = 31
      # puts num_days
    elsif thirty.include? @month
      num_days = 30
      # puts num_days
    # elsif
    #   leap_year == true ? num_days = 29 : num_days = 28
      # puts num_days
    end

    if @month == 2 && @year % 400 == 0
      leap_year = true
      # print leap_year
    elsif @month == 2 && @year % 100 == 0
      leap_year = false
      # print leap_year
    elsif @month == 2 && @year % 4 == 0
      leap_year = true
      # print leap_year
    else
      leap_year = false
      # print leap_year
    end
    leap_year == true ? num_days = 29 : num_days = 28

  end


end
