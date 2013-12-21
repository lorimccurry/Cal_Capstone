class Zeller

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

    day_one = (1 + ((month + 1)*26)/10 + year + (year/4) + 6*(year/100) + (year/400)) % 7
  end
end
