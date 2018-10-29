####FIX_ME Fix user_input so program doesn't run without them correctly inputing the required format
####FIX_ME Find more efficient method than using a case statement for each day of the month
####FIX_ME Do a general clean-up to cut down amount of lines used and make it more readable
puts "What year were you born in?(yyyy)"
year_born = gets.chomp
puts "What month were you born in?(mm)"
month_born = gets.chomp
case
when month_born == "01"
    days_of_month = 0
when month_born == "02"
    days_of_month = 31
when month_born == "03"
    days_of_month = 59
when month_born == "04"
    days_of_month = 90
when month_born == "05"
    days_of_month = 120
when month_born == "06"
    days_of_month = 151
when month_born == "07"
    days_of_month = 181
when month_born == "08"
    days_of_month = 212
when month_born == "09"
    days_of_month = 243
when month_born == "10"
    days_of_month = 273
when month_born == "11"
     days_of_month = 304
when month_born == "12"
    days_of_month = 334
    
end
puts "What day were you born?(dd)"
day_born = gets.chomp
day_born = days_of_month.to_i + day_born.to_i

year = Time.now.strftime'%Y'
month= Time.now.strftime'%m'
day = Time.now.strftime'%j'
age_in_years = (year.to_i - year_born.to_i-1)
if  month.to_i >= month_born.to_i and day.to_i >= day_born
    age_in_years += 1
end
birthday = day_born - day.to_i
if birthday < 0
    birthday = birthday + 365
    puts "You are #{age_in_years}, your next birthday is in #{birthday} days"
elsif birthday == 0
    puts "HAPPY BIRTHDAY!!! You made it to #{age_in_years}!"
else birthday > 0
    puts "You are #{age_in_years}, your next birthday is in #{birthday} days"
end


