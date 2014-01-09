require_relative 'month'

class Year

  def initialize(year)
    @year = year
  end

  def year_head
    first_row = "#{@year}".center(60).rstrip
  end

  def year_formatted_array
    quarters_array = year_array_raw

    index_quarters_in_year = 3
    index_rows_in_month = 7
    index_months_in_quarter = 2
    rows = []
    0.upto(index_quarters_in_year) do |quarter_index|
      0.upto(index_rows_in_month) do |row_index|
        row = []
        0.upto(index_months_in_quarter) do |month_index|
          row << quarters_array[quarter_index][month_index][row_index]
        end
        joined_row = row.join("  ")
        rows << joined_row.rstrip
      end
    end
    rows.unshift(self.year_head)
  end

  def year_array_raw
    month_nums_array = (1..12).to_a
    cal_month_array = []
    formatted_year = month_nums_array.each do |month_num|
      new_month = Month.new(month_num, @year)
      month_array = new_month.month_constructor(true)
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
