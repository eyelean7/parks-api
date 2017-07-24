# Parks API

## Endpoints

### GET
http://localhost:3000/parks returns list of parks.
http://localhost:3000/parks/:id returns the park with that id
http://localhost:3000/parks?park_name=[PARK NAME] returns parks with that name
http://localhost:3000/parks?location=[LOCATION] returns parks in that location
http://localhost:3000/parks?random=true returns a random park

### Post
http://localhost:3000/parks?park_name=[PARK NAME]&location=[LOCATION] creates a park with that name and location

### Patch
http://localhost:3000/parks/:id?park_name=[PARK NAME]&location=[LOCATION] updates both the park name and location.
http://localhost:3000/parks/:id?park_name=[PARK NAME] updates just the name
http://localhost:3000/parks/:id?location=[LOCATION] updates just the location

### Delete
http://localhost:3000/parks/:id deletes park with that id

* Ruby version 2.2.4

* Database creation postgres rake db:create rake db:migrate

## To Use
* `bundle`
* `rails s`
* Make API calls in Postman app or curl requests 

* To do: fix factory girl, refactor specs to include a module
