# Q0: Why are these two errors being thrown?
We need to run rails db:migrate first
It doesn't know what pokemon is because we haven't created the model for pokemon yet.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The pokemon are appearing because of the rails db:seed command.
The common factor is that they are all starting pokemon. 
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It goes to the path of capture_path, and it sends along the id of the pokemon as a parameter when the throw a pokeball button is pressed.

# Question 3: What would you name your own Pokemon?

The name of the Pokemon depends on the pokemon's name in the database. You can make it so that if you catch a pokemon, you can update its name to whatever nickname you want it to be.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed trainer_path(id: current_trainer). Our rails already set trainer_path as a prefix for getting the path of a trainer with a id, so all I need to do when I call it is to put in an id. This way it redirects to the page /trainers/:id

We dont need a path because rails already uses the prefix to create a path for us.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

The error message displays whenever something we submit in our form doesnt meet our validation constraints.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
