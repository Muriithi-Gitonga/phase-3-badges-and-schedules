# Write your code here.

def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator name_array
    name_array.map do |name|
        badge_maker(name)
    end
end

def assign_rooms name_array
    name_array.map.with_index do |name, index|
        "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    end
end

def printer name
    batch_badge_creator(name).each do |name|
        puts name
    end
    assign_rooms(name).each do |name|
        puts name
    end
end


