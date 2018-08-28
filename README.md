Repository to keep a copy of completed or WIP exercises for CA bootcamp.
Exercise index:

1. We've got name and age, let's give each dog a location too. Test your location works by printing the dog's location.
doggo = Dog.new('Rover', 2, 'Brisbane')
puts doggo.location # -> Brisbane (You might get a no method error, remember attr_accessor?)

Create a walk method. This should say "I have been for X walks.". Every time you call walk, the number should increase by one E.g:
doggo = Dog.new(...)
doggo.walk # -> I have been for 1 walks today
doggo.walk # -> I have been for 2 walks today
Update the walk method so it only increases the walk count. Create a new method to display walks. E.g.: doggo = Dog.new(...)
doggo.walk # -> Shouldn't print anything on screen
doggo.walk # -> Shouldn't print anything on screen
doggo.display_walks # -> I have been for 2 walks today
Update the walk method so you can chain walk commans. E.g.: doggo = Dog.new(...)
doggo.walk.walk.display_walks # -> I have been for 2 walks today
Beast Mode 
Improve the walk method. Accept a location and a distance. e.g. doggo.walk('Brisbane', 20)
Update your display_walks method to show all of the walk details.
Implement a total_distance method to calculate the total distance of all the walks.
Track the time each walk is created. Update display_walks to show it back to your user in a readable format.
Research ruby gems. Use a gem to geocode a location and store it's latitude + longitude. E.g. "Brisbane" stores -27.44888,153.00531
