# The Dunder Mifflin Pet Show


You're right on your way to help The Dunder Mifflin Paper Company with their brand new application. It is meant to 
showcase each of the employees' pets. We’ve started some of the work for you, and we need your help to get our site fully working! Here are the deliverables:

- Build out the associations for the models we've created. If you look into the `seeds.rb` file, you'll notice that we've put
in the desired models and expected associations to make our app work. **However**, you need to change the schema in order
for you to be able to run `rake db:seed`. Every employee can only be connected to a single dog, and a dog can have many owners.
#dog "have many" = has_many
#employee "can only..single dog" = belongs_to


- For our index page for Dogs, a user should be able to click on a specific dog and take them to the corresponding show page.
#link_to show page

- The Dog show page should have their name, breed, age and the list of Dunder Mifflin Employees they are connected to
#dog.each 

- For our index page for Employees, a user should be able to click on a specific Employee and take them to their corresponding show page.
#link_to show page


- The Employee show page should list all of their attributes (and as a bonus, try to get their picture to show up!)
#employee.each

As a user, I should be able to create AND edit an Employee, and only be able to select 1 dog from a list of already existing dogs.
#create
#drop down menu
#edit form

No one at Dunder Mifflin can have the same alias and/or job title (Dwight made up that rule!)
#uniqueness = true


BONUS: Make an option to sort the dogs on the index page by the number of employees that belong to them.
