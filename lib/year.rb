require_relative 'month'

class Year

  def initialize(year)
    @year = year
  end

  def year_head
    first_row = ["#{@year}"]
  end

  def year_formatted_array
    quarters_array = year_array_raw
    rows = []
    0.upto(3) do |quarter_index|
      0.upto(6) do |row_index|
        row = []
        0.upto(2) do |month_index|
          row << quarters_array[quarter_index][month_index][row_index].join(" ")
        end
        # rows << row.join(" ")
        row
        print row
      end
    end
  end

  def year_array_raw
    month_nums_array = (1..12).to_a
    cal_month_array = []
    formatted_year = month_nums_array.each do |month_num|
      new_month = Month.new(month_num, @year)
      month_array = new_month.week_arrays(true)
      cal_month_array.push(month_array)
    end
    quarters = quarter_array(cal_month_array)
  end

  def quarter_array(cal_month_array)
    month_row = []
    while cal_month_array.length >= 3
      quarter = cal_month_array.shift(3)
      month_row << quarter
    end
    month_row
  end

end
