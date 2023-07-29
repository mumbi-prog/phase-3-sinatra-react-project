# Botanical Buddy - Backend
### Author: Sylvia Mumbi Mwangi
#### Botanity Buddy Front-end interface
**Botanical Buddy frontend is available [here](https://github.com/mumbi-prog/botanity-buddy)**

## Getting Started
Botanical Buddy is a web application designed to help plant enthusiasts manage and care for their plants effectively. This backend repository contains the codebase for the server-side API and database interactions of the Botanical Buddy web application.

## Setup and installation

### 1. Clone the repository
```console
$ git clone git@github.com:mumbi-prog/phase-3-sinatra-react-project.git
cd phase-3-sinatra-react-project
```

### 2. Install the required gems
```console
$ bundle install
```

### To start the backend server
```console
$ bundle exec rake server
```
This will run the server on **[http://localhost:9292](http://localhost:9292)**


## Technologies Used
  1. Ruby
  2. Sinatra
  3. ActiveRecord
  4. SQLite3

## API Endpoints
The backend provides the following API endpoints:
**Plants**
  1. **GET/plants**: Get a list of all plants.
  2. **GET /plants/:id**: Get a specific plant by its ID.
  3. **POST /plants**: Create a new plant.
  4. **PATCH /plants/:id**: Update an existing plant.
  5. **DELETE /plants/:id**: Delete a plant.

**Care Tasks**
  1. **GET/plants**: Get a list of all care task.
  2. **GET /plants/:id**: Get a specific care task by its ID.
  3. **POST /plants**: Create a new care task.
  4. **PATCH /plants/:id**: Update an existing care task.
  5. **DELETE /plants/:id**: Delete a care task.

## LICENSE
This project is licensed under the [MIT LICENSE](https://github.com/mumbi-prog/phase-3-sinatra-react-project/blob/main/LICENSE)
