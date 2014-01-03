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

  def convert_zeller
    self.zeller == 0 ? day_one = (self.zeller + 6) : day_one = (self.zeller - 1)
    day_one
  end

  def head_rows(year_print_boolean)
    month_names = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    name = month_names[@month - 1]
    end_of_quarter = ["March", "June", "September", "December"]

    header = []
    if year_print_boolean == true
      if end_of_quarter.include? name
        header << first_row = ["#{name}".center(20).rstrip]
      else
        header << first_row = ["#{name}".center(20)]
      end
    else
      header << first_row = ["#{name} #{@year}".center(20).rstrip]
    end
    header << second_row = ["Su Mo Tu We Th Fr Sa"]
  end

  def month_days
    leap_year

    thirty_one_day_month = [1, 3, 5, 7, 8, 10, 12]
    thirty_day_month = [4, 6, 9, 11]

    if @month == 2
      if leap_year == true
        num_days = 29
      else
        num_days = 28
      end
    else
      if thirty_one_day_month.include? @month
        num_days = 31
      elsif thirty_day_month.include? @month
        num_days = 30
      end
    end
  end

  def leap_year
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
  end

  def month_array
    num_days = self.month_days
    month_array = (1..num_days).to_a

    formatted_array = month_array.map do |num|
      if num < 10
        " #{num}"
      else
        num.to_s
      end
    end
  end

  def week_strings(year_print_boolean)
    day_one = convert_zeller
    add_space = "  "
    day_array = self.month_array

    #adds 2 spaces/day to start of day array to line up day one
    #under proper day of the week
    day_one.times do
      day_array.unshift(add_space)
    end

    weeks = []
    day_array.each_slice(7) do |row|
      weeks << row
    end

    #adds 2 spaces/day to end of week to allow last week = 20 spaces
    end_of_quarter = [3, 6, 9, 12]
    weeks.each do |week|
      if week.length < 7 && year_print_boolean == false
        (7 - week.length).times do
          week << add_space
        end
      elsif week.length < 7 && year_print_boolean == true && !end_of_quarter.include?(@month)
        (7 - week.length).times do
          week << add_space
        end
      end
    end

    #adds month and week headers to week array; reversed order so would
    #attach to week array with month header first
    head_rows(year_print_boolean).reverse_each do |header_item|
      weeks.unshift(header_item)
    end

    blank_row = ["                    "]
    if year_print_boolean == true && weeks.length == 7
      weeks << blank_row
    elsif year_print_boolean == false
      weeks << blank_row
    end
    weeks.map {|week| week.join(" ") }
  end

end
