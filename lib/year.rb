require 'month'

class Year

  def initialize(year)
    @year = year
  end

  def year_head
    first_row = "#{@year}".center(60).rstrip
    #why is this not 64 centered?
  end

  def year_body
    cal_month_array = month_array
    month_row = []
    while cal_month_array.length >= 3
      row = cal_month_array.shift(3)
      row_string ="#{row[0]} #{row[1]} #{row[2]}"
      # month_row << row_string.join(" ")
    end
    # month_row.join("\n")
  end

  def month_array
    month_array = (1..12).to_a
    cal_month_array = []
    formatted_year = month_array.each do |month_num|
      new_month = Month.new(month_num, @year)
      formatted_month = new_month.month_all(true)
      cal_month_array.push(formatted_month)
    end
    cal_month_array
  end



end
