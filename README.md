# Restaurant API

This is an API that includes data for local restaurants. It includes serialization, versioning to return the restaurants. The application uses scopes to return a random restaurant as well.

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

Additional exploration:
* Add versioning and serializers to API.

## Installation

* `$ git clone https://github.com/sowmyadsl/restaurant-api`
* `$ cd restaurant-api`

## PostgreSQL Integration

* `$ postgres`
* `$ rake db:create`
* `$ rake db:migrate db:test:prepare`

## Seed database

* `$ rake db:seed`

## Development server

Run `rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files. Or checkout [Postman](https://www.getpostman.com/) and see the data prettier.

# End Points:

GET http://localhost:3000/v1/restaurants/:id will show an individual restaurant by :id

![](https://github.com/sowmyadsl/restaurant-api/blob/master/public/get-route-id.png)

POST http://localhost:3000/v1/restaurants will post a new restaurant.

![](https://github.com/sowmyadsl/restaurant-api/blob/master/public/post-route.png)

PUT http://localhost:3000/v1/restaurants/:id will update a restaurant.

![](https://github.com/sowmyadsl/restaurant-api/blob/master/public/update-route.png)

DELETE http://localhost:3000/v1/restaurants/:id will delete a restaurant with corresponding :id

![](https://github.com/sowmyadsl/restaurant-api/blob/master/public/delete-route.png)

GET http://localhost:3000/v1/restaurants?name=daniel Inc will search the name of the restaurant and return the result.

![](https://github.com/sowmyadsl/restaurant-api/blob/master/public/search-name.png)

GET http://localhost:3000/v1/random will display a random restaurant
![](https://github.com/sowmyadsl/restaurant-api/blob/master/public/random-route.png)

## Technologies used / Prerequisites

* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/docs/9.2/static/app-psql.html)
* [Git](https://git-scm.com/)

## Other Sources

* [Serializer](https://blog.engineyard.com/2015/active-model-serializers)
* [Postman](https://www.getpostman.com/)

## Known Bugs
* N/A

## License

*This software is licensed under MIT license.*

```
Copyright (c) 2017 Sowmya Dinavahi
```
