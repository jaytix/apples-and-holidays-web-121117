require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash.each do |seasons, holiday|
  if seasons == :winter
    #binding.pry
    holiday.each do |day, supplies|
      supplies.push(supply)
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |seasons, holiday|
    if seasons == :spring
      #binding.pry
      holiday.each do |day, supplies|
        supplies.push(supply)
        end
      end
    end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |seasons|
    #binding.pry
    if seasons[0] == season
      holiday_hash[season][holiday_name] = supply_array
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  newArray = []
  holiday_hash.each do |seasons, holiday|
    if seasons == :winter
      #binding.pry
      holiday.each do |day, supplies|
        newArray.push(supplies)
        end
      end
    end
  return newArray.flatten
end

# def all_supplies_in_holidays(holiday_hash)
#   # iterate through holiday_hash and print items such that your readout resembles:
#   # Winter:
#   #   Christmas: Lights, Wreath
#   #   New Years: Party Hats
#   # Summer:
#   #   Fourth Of July: Fireworks, BBQ
#   # etc.
#   holiday_hash.each do |seasons,holiday|
#     #binding.pry
#     words = seasons.split("_")
#     words.each do |word|
#       word.capitalize!
#       words.join(" ")
#       holiday.each do |day, supplies|
#         binding.pry
#           if supplies.length > 1
#               supplies.each do |supply|
#                 str = supplies.join(", ")
#                 puts "#{seasons.to_s.capitalize}:"
#                 puts "  #{day.to_s.capitalize}: #{str}"
#             end
#           else
#             puts "#{seasons.to_s.capitalize}:"
#             puts "  #{day.to_s.capitalize}: #{supplies[0]}"
#           end
#       end
#   end
# end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.each do |seasons, holiday|
      holiday.each do |day, supplies|
        binding.pry
        supplies.each do |supply|
        if suppy === "BBQ"
        supplies.push(supply)
        end
      end
    end
end
