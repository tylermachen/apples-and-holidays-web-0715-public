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
  holiday_hash[:winter].each { |holiday, supplies| supplies << supply }
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  result = []
  holiday_hash[:winter].each do |holiday, supplies|
    supplies.each do |item|
      result << item
    end 
  end 
  result
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, attributes|
    puts "#{season.to_s.capitalize}:"
    attributes.each do |holiday, supplies|
      # should clean this up later to not look so confusing
      puts "  #{holiday.to_s.split('_').each { |h| h.capitalize! }.join(' ')}: #{supplies.join(', ')}"
    end 
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  result = []

  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supplies|
      supplies.each do |item|
        result << holiday if item == "BBQ"
      end
    end
  end

  result
end







