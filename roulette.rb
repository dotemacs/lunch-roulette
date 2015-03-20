#!/usr/bin/env ruby

file = File.readlines 'people.txt'

user1 = file.sample
team = user1.split(',')[1].chomp

eaters = []
eaters << user1.chomp

picked_teams = []
picked_teams << team

file.each do |line|
  new_team = line.split(',')[1].chomp
  if (new_team != team) and (!picked_teams.include?(new_team))
    eaters << line.chomp
    picked_teams << new_team
  end
  break if eaters.size == 4
end

puts "Eaters are:
#{eaters.join("\n")}"
