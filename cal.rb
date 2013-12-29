require_relative 'lib/year'
require_relative 'lib/month'


#need code to say if there's only 1 arg (argv0 is nil, that it's a year; w/ 2, see below; with

month = ARGV[0]
year = ARGV[1]

puts month
puts `cal #{month} #{year}`