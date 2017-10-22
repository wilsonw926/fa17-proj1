# Q0: Why is this error being thrown?

We haven't done the migration yet so pokemon doesn't have a home controller yet. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

It is based off of the seeds.rb file to generate some trainerless pokemon. The random pokemon are from the list of unclaimed pokemon. These wild pokemon all have nil as their trainer_id attribute. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This creates a button called "Throw a Pokeball!". A patch request is sent via capture_path to get the pokemon_id (also linked to the capture method in Pokemon controller).

# Question 3: What would you name your own Pokemon?

Bob the Blobfish

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

trainer_path with the parameter: (id: pokemon.trainer_id)

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

This sets the error key in the flash dictionary to the error message.

# Give us feedback on the project and decal below!

This was sooo cooool! I want to add pictures next to the pokemon too but we would need the entire pokemon database. Still cool. Also I wish the demos were recorded during lecture so we can rewatch them later. It would really help because I feel that I learn most from watching others explain while they work.

# Extra credit: Link your Heroku deployed app
https://pokemon-portal.herokuapp.com/
