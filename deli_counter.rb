require 'pry'
# Write your code here.
def line(arr) #lets you know your spot in line
    if arr.length == 0
        puts "The line is currently empty."
    elsif arr.length > 0
        message = "The line is currently:" 
        arr.each_with_index do |name, index| 
            message += " #{index + 1}. #{name}"
        end
        puts "#{message}"
        # binding.pry
    end
end

def take_a_number(katz_deli, name) #adds people to the line.
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli) #removes the first element.
    if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli.shift}." #calls the first index and removes it
    end
end