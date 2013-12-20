class Month

  def zeller(*inputs)
    month = inputs[0].to_i
    year = inputs[1].to_i

    if year < 1800 || year > 3000
      raise ArgumentError, 'Year out of range'
    end

    if inputs == nil
        raise ArgumentError, 'No arguments given'
      end

    if inputs[0] == 1 or inputs[0] == 2
      year -= 1
      month += 12
    end

    day_one = 1
    day_of_week_progression = (((month + 1)*26)/10).floor
    leap_year_add_day = (year/4).floor
    century = 6*((year/100).floor)
    leap_century = (year/400).floor

    day_week = (day_one + day_of_week_progression + year + leap_year_add_day + century + leap_century) % 7
  end
end
