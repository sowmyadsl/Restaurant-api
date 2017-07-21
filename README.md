# Local Business Look-up API

This is an API that includes data for local restaurants and shops. It includes pagination and serialization to return the businesses. The application uses scopes to return random business.


Business information includes:
* name
* address
* phone_number

Users can access:
* GET requests for restaurants.
* POST, PATCH, PUT, DELETE requests restaurants.

Scopes:
* Filters by name.

End Points:
GET http://localhost:3000/restaurants/:id will show an individual restaurant by :id
POST http://localhost:3000/restaurants will post a new restaurant.
PUT http://localhost:3000/restaurants/:id will update a restaurant.
DELETE http://localhost:3000/restaurants/:id will delete a restaurant with corresponding :id
GET http://localhost:3000/restaurants?name=krajcik group will search the name of the restaurant and return the result.



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
