# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

# taco_votes is an array that contains different votes that each represent a ttpe of taco
taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

# the variable totals contains the hash reflecting the tally of votes for each type of taco.
# Using the `reduce` method to create a Hash that will tally the votes for each taco type.
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
   # Convert each vote to lowercase to standardize the format.
  # Increment the count for each type of taco in the `result` hash.
  result[vote.downcase] += 1
   # Return the updated `result` hash.
  result
end

p totals


# It initializes an empty hash (Hash.new(0)) where the default value for any key is set to 0.
# The do |result, vote| block is crucial in the reduce method, allowing for the accumulation and manipulation of the vote counts into the result hash by iterating through each vote in the taco_votes array. The result is continuously updated based on the logic within the block, incrementing the counts of each taco type found in the array.
# Within the block given to reduce, the vote.downcase method call converts each vote to lowercase to ensure consistent counting
# The last line p totals prints out the final tally of votes for each type of taco represented in the taco_votes array.

# The overall purpose of this code is to count and standardize the different representations of taco votes into a case-insensitive format, providing a total count for each type of taco voted for. 