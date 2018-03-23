# Q0: Why is this error being thrown?
  It's being thrown because there is no Pokemon model.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
  The pokemon are appearing from the seeds.rb. All possible pokemon wild at first.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
  The following line creates a button option in which the capture using patch
  is referred to with id:@pokemon as its parameter.
# Question 3: What would you name your own Pokemon?
  Cook(I just want a pokemon that can cook)
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
  I passed redirect_to trainer_path(current_trainer.id). This is
  not exactly a path but it is rather, a reroute to a trainer_path need an id for reference.
  It's ok not to have a path here because there is no post/patch request.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
  "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages
  by seeing if the parameters have proper parameters. If not, then there will
  be an output of the reasoning behind the error.
# Give us feedback on the project and decal below!
Might be out of your control, but it would be real helpful if the error output was user friendly.
Having a bunch of mumbo jumbo is really hard to debug versus having the output tell us that
we didnt do this or that and that you would do that in insert_file_name.

Link to repo: https://github.com/JoshieBoshie/proj1


# Extra credit: Link your Heroku deployed app
Note: I tried to this, but I think I messed up and there's a bunch of weird stuff
happening to the app. I'm getting method not allowed, the app link itself doesn't
open, etc.
https://mysterious-cliffs-60859.herokuapp.com/
