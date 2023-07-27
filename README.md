# Botanical Buddy - Backend
### Author: Sylvia Mumbi Mwangi

## Getting Started

- Build a web basic API with Sinatra and Active Record to support a React
  frontend

## Starting the Server
To start the backend server, run the following command:

```console
$ bundle exec rake server
```
This will run the server on **[http://localhost:9292](http://localhost:9292)**

## API Endpoints
The backend provides the following API endpoints:
**Plants**
    - **GET/plants**: Get a list of all plants.
    -	**GET /plants/:id**: Get a specific plant by its ID.
    -	**POST /plants**: Create a new plant.
    -	**PATCH /plants/:id**: Update an existing plant.
    -	**DELETE /plants/:id**: Delete a plant.

**Care Tasks**
    -	**GET /care_tasks**: Get a list of all care tasks.
    -	**GET /care_tasks/:id**: Get a specific care task by its ID.
    -	**POST /care_tasks**: Create a new care task.
    -	**PATCH /care_tasks/:id**: Update an existing care task.
    -	**DELETE /care_tasks/:id**: Delete a care task.

## Database
The backend uses a SQLite database to store plant and care task information. The database file is located at db/development.sqlite3.
