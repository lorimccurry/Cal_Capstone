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
    header = []
    if year_print_boolean == true
      header << first_row = ["#{name}".center(20)]
    else
      header << first_row = ["#{name} #{@year}".center(20)]
    end
    header << second_row = ["Su Mo Tu We Th Fr Sa"]
  end

  def month_days
    leap_year

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

  def week_arrays(year_print_boolean)
    day_one = convert_zeller
    add_space = "  "
    day_array = self.month_array

    day_one.times do
      day_array.unshift(add_space)
    end

    weeks = []
    day_array.each_slice(7) do |row|
      weeks << row
    end

    weeks.each do |week|
      if week.length < 7
        (7 - week.length).times do
          week << add_space
        end
      end
    end

    head_rows(year_print_boolean).reverse_each do |item|
      weeks.unshift(item)
    end
    weeks.map {|w| w.join(" ") }
  end

  # def head_rows(year_print_boolean)
    # month_names = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    # name = month_names[@month - 1]
    # if year_print_boolean == true
    #   first_row = "#{name}".center(20).rstrip
    # else
    #   first_row = "#{name} #{@year}".center(20).rstrip
    # end
    # second_row = "\nSu Mo Tu We Th Fr Sa"
    # header = first_row + second_row
  # end


  # def weeks
    # day_one = convert_zeller

    # add_space = "  "
    # day_array = self.month_array

    # first_week_string = first_week(day_one, add_space, day_array)

    # middle_weeks_string = middle_weeks(day_array)

    # if day_array.length > 0
    #   last_week_string = last_week(day_array, add_space)
    # else
    #   last_week_string = nil
    # end

    # if last_week_string == nil
    #   mtd = "#{first_week_string}\n#{middle_weeks_string}"
    # else
    #   mtd = "#{first_week_string}\n#{middle_weeks_string}\n#{last_week_string}"
    # end
    # mtd

  # end

  # def first_week(day_one, add_space, day_array)
    # day_one.times do
    #   day_array.unshift(add_space)
    # end
    # first_week_array = day_array.shift(7)
    # first_week_string = first_week_array.join(" ")
  # end

  # def middle_weeks(day_array)
    # mid_weeks = []
    # while day_array.length >= 7
    #   row = day_array.shift(7)
    #   mid_weeks << row.join(' ')
    # end
    # mid_weeks.join("\n")
  # end

  # def last_week(day_array, add_space)
    # (7 - day_array.length).times do
    #   day_array << add_space
    # end
    # last_week_string = day_array.join(" ")
  # end

  # def month_all(year_print_boolean)
    # month_header = head_rows(year_print_boolean)
    # month_body = weeks
    # month = "#{month_header}\n#{month_body}"
  # end

end
