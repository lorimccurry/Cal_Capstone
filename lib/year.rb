require_relative 'month'

class Year

  def initialize(year)
    @year = year
  end

  def year_head
    first_row = ["#{@year}"]
  end
#if a month has rows length of 7, then (7-row.length).times do month rows << ["blank row"]

  def year_formatted_array
    quarters_array = year_array_raw
    rows = []
    0.upto(3) do |quarter_index|
      0.upto(6) do |row_index|
      # 0.upto(7) do |row_index|
        row = []
        0.upto(2) do |month_index|
          row << quarters_array[quarter_index][month_index][row_index].join(" ")
        end
        rows << row.join("  ")
      end
    end
    rows << self.year_head.unshift

    #32 rows, each row is a row to print out w/ values from 3 mos
    # rows.each do |row|
    #   row.each do |value|
    #     value.map do |x|
    #       print !x.nil
    #     end

      # if row!nil?.length <= 2
        # print row
      #   row = "                    "
      # else
      #   row = row
      # end
    # end
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
    #   # quarters.each do |month|
    #   0.upto(3) do |quarter_index|
    #     0.upto(2) do |month_index|
    #       quarters[quarter_index].each do |month|
    #         print quarter_index
    #       # print s.length
    #       end
    #     end
    #   end
    # print quarters[2][0].length
    # print quarters[2][0].length
  end

        #   if row_index = nil
        #   print row[6]
        # end

  def quarter_array(cal_month_array)
    month_row = []
    while cal_month_array.length >= 3
      quarter = cal_month_array.shift(3)
      month_row << quarter
    end
    month_row
  end

end
