require_relative 'lib/year'
require_relative 'lib/month'


if ARGV.length > 2
  raise ArgumentError, 'Too many arguments'
elsif ARGV.empty?
  raise ArgumentError, 'No arguments given'
elsif ARGV.length == 2
  month = ARGV[0].to_i
  year = ARGV[1].to_i
elsif ARGV.length == 1
  year = ARGV[0].to_i
end

if month
  if (month < 1 || month > 12) && (year < 1800 || year > 3000)
    raise ArgumentError, 'Not a valid month (1..12) and year range (1800..3000)'
  elsif month < 1 || month > 12
    raise ArgumentError, 'Not a valid month number (1..12)'
  end
end

if year < 1800 || year > 3000
  raise ArgumentError, 'Year out of range (1800..3000)'
end

if month
  new_month = Month.new(month, year)
  month_array = new_month.week_strings(false)
  puts month_array.join("\n")
else
  new_year = Year.new(year)
  year_array = new_year.year_formatted_array
  puts year_array.join("\n")
end