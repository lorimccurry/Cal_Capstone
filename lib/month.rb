class Month

  def zeller(arg)
      # d = day of month
      # m = month
      # y = year
      d = 1
      m = 1
      y = 2012 - 1
      chunk_1 = (((m + 1)*26)/10).floor
      chunk_2 = (y/4).floor
      chunk_3 = 6*((y/100).floor)
      chunk_4 = (y/400).floor
      day_week = (d + chunk_1 + y + chunk_2 + chunk_3 + chunk_4) % 7
    end

end
