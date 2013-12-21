require_relative 'zeller'

class Month

  def month_name(month_num)
    month_names = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    name = month_names[month_num -= 1]
    formatted_name = name.center(20)
  end


end
