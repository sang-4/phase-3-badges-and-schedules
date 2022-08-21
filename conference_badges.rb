# Write your code here.
require 'pry'
# badge maker
def badge_maker (name)
  "Hello, my name is #{name}."
end

#batch badge creator
def batch_badge_creator (array)
  array.map {|name| badge_maker(name)}
end

# assign room
def assign_rooms (array)
    array.each_with_index.map do |name, index|
        "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    end
end

#creating print_badges method
def printer (attendees)
    batch_badge_creator(attendees).each do |badge|
        puts badge
    end
    assign_rooms(attendees).each do |room|
        puts room
    end
    end