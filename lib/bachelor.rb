require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |person|
    return person["name"].split(" ").first if person["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    # binding.pry
    contestants.each do |person|
      # binding.pry
      return person["name"] if person["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestants|
    contestants.each do |person|
      count += 1 if person["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |person|
      return person["occupation"] if person["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total = 0
  count = 0

  data[season].each do |person|
    total += person["age"].to_f
    count += 1
  end
  (total / count).round
end
