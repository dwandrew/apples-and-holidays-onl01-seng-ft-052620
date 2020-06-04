require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash.each do |season, holiday|
  if season == :winter;
    holiday_hash[season].each do |holiday, array| array << supply end
  end
end
holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    if season == :spring;
      holiday_hash[season].each do |holiday, array| array << supply end
    end
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies =[]
  holiday_hash.each do |season, holiday|
    if season == :winter;
      holiday_hash[season].each do |holiday, array| winter_supplies << array end
    end
  end
  winter_supplies.flatten 
end

# def all_supplies_in_holidays(holiday_hash)
#   # iterate through holiday_hash and print items such that your readout resembles:
#   # Winter:
#   #   Christmas: Lights, Wreath
#   #   New Years: Party Hats
#   # Summer:
#   #   Fourth Of July: Fireworks, BBQ
#   # etc.
# holiday_hash.each do |season, holiday| puts "#{season.to_s.capitalize}:" 
#       holiday.each do|holiday, supplies| 
#         puts "  #{holiday.to_s.split('_').map{|word| word.capitalize}.join(' ')}: #{supplies.join(', ')}"
# end
# end

def all_supplies_in_holidays(holiday_hash) 
  holiday_hash.each do |season, seasonHash| 
    seasonHash.each do |holiday, array| 
      holiday.to_s.capitalize! 
      holiday.to_s.split('_').each do |item| item.capitalize!
  binding.pry
  end
  holiday.to_s.split('_').join('_') 
  end
  end 
  puts holiday_hash 
  end



end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
bbq_hols =[]
holiday_hash.each do |season, holiday| 
  holiday.each do |holiday, supplies|
    bbq_hols << holiday if supplies.include?('BBQ');
    end  
  end
  bbq_hols
end






