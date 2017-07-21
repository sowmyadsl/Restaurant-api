# Restaurant API

This is an API that includes data for local restaurants. It includes serialization, versioning to return the businesses. The application uses scopes to return a random restaurant as well.

Business information includes:
* name
* address
* phone_number

Users can access:
* GET requests for restaurants.
* POST, PATCH, PUT, DELETE requests restaurants.
* GET random restaurant.

Scopes:
* Filters by name.

End Points:

GET http://localhost:3000/v1/restaurants/:id will show an individual restaurant by :id
POST http://localhost:3000/v1/restaurants will post a new restaurant.
PUT http://localhost:3000/v1/restaurants/:id will update a restaurant.
DELETE http://localhost:3000/v1/restaurants/:id will delete a restaurant with corresponding :id
GET http://localhost:3000/v1/restaurants?name=daniel Inc will search the name of the restaurant and return the result.
GET http://localhost:3000/v1/random will display a random restaurant



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
