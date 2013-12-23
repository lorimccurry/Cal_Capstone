
class Month

  def initialize (month, year)
    @month = month
    @year = year
  end

  def zeller
    month = @month
    year = @year

    if month == 1 or month == 2
      year -= 1
      month += 12
    end

    day_one = (1 + ((month + 1)*26)/10 + year + (year/4) + 6*(year/100) + (year/400)) % 7
  end

  def head_rows
    month_names = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    name = month_names[@month - 1]
    first_row = "#{name} #{@year}".center(20).rstrip
    second_row = "\nSu Mo Tu We Th Fr Sa"
    header = first_row + second_row
  end

  def month_days
    if @month == 2
      if @year % 400 == 0
        leap_year = true
      elsif @year % 100 == 0
        leap_year = false
      elsif @year % 4 == 0
        leap_year = true
      end
    else
      leap_year = false
    end

    thirty_one = [1, 3, 5, 7, 8, 10, 12]
    thirty = [4, 6, 9, 11]

    if @month == 2
      if leap_year == true
        num_days = 29
      else
        num_days = 28
      end
    else
      if thirty_one.include? @month
        num_days = 31
      elsif thirty.include? @month
        num_days = 30
      end
    end
  end

  def month_array
    num_days = self.month_days
    month_array = (1..num_days).to_a

    formatted_array = month_array.map do |num|
      if num < 10
        " " + num.to_s
      else
        num.to_s
      end
    end
  end

  def weeks
    row_string = "%s %s %s %s %s %s %s"
    row_string % self.month_array
  end

end
