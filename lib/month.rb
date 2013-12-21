require_relative 'zeller'

class Month

  def initialize (month, year)
    @month = month
    @year = year
  end

  def head_rows
    month_names = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    name = month_names[@month - 1]
    first_row = "#{name} #{@year}".center(20).rstrip
    second_row = "\nSu Mo Tu We Th Fr Sa"
    header = first_row + second_row
  end


end
