# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

def extract_sort_values(hash)
    values = hash.values.flatten.sort
  end

us_states = { 
     northwest: ['Washington', 'Oregon', 'Idaho'],
     southwest: ['California', 'Arizona', 'Nevada'], 
     notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

result = extract_sort_values(us_states)
p result

# ["Arizona", "California", "Idaho", "Maine", "Nevada", "New Hampshire", "Oregon", "Rhode Island", "Washington"]



# Pseudo code:
# created method extract_sort_values that takes in a hash as input
# .values access the values of the hash
# .flatten combines all the values into a single list
# .sort to make list in order

# store the method extract_sort_values using us_states variable in values
# print the result using p to return in an array

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

class Bike
    def initialize(model, wheels = 2, current_speed = 0)
        @model = model
        @wheels = wheels
        @current_speed = current_speed
    end

    def bike_info
        "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
    end
end

mongoose_bike = Bike.new("Mongoose")
puts mongoose_bike.bike_info

# The Mongoose bike has 2 wheels and is going 0 mph.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code:

# Create class Bike
# use initialize method to take in info about bike
# set @model to model
# set @wheels to equal 2
# set @current_speed to 0

# create another method bike_info
# return sentence about details

# create new object using .new 
# return output 

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.


class Bike
    def initialize(model, wheels = 2, current_speed = 0)
        @model = model
        @wheels = wheels
        @current_speed = current_speed
    end

    def bike_info
        "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
    end

    def pedal_faster(increase)
        @current_speed += increase
    end

    def brake(decrease)
        @current_speed -= decrease
        @current_speed = 0 if @current_speed.negative?
    end
end

mongoose_bike = Bike.new("Mongoose")

puts mongoose_bike.pedal_faster(10)
# Expected output example: my_bike.pedal_faster(10) => 10
puts mongoose_bike.pedal_faster(18)
# Expected output example: my_bike.pedal_faster(18) => 28
puts mongoose_bike.brake(5)
# Expected output example: my_bike.brake(5) => 23 ,, i got stuck on this one and ran out of time 
puts mongoose_bike.brake(25)  
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:

## Create class Bike
# use initialize method to take in info about bike
# set @model to model
# set @wheels to equal 2
# set @current_speed to 0

# create another method bike_info
# return sentence about details
# create another method pedal_faster
# create another method brake

# print results of increasing or decreasing speed