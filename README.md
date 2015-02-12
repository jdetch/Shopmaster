# Shopmaster

Shopmaster is a basic sample application that facilitates the creation of grocery lists. 
 
## Description

Shopmaster was created to demonstrate how to save a new parent record and its children simultaneously. You can  find additional information about this topic in my original [blogpost](PLACEHOLDER).

Shopmaster is built on the following:

* Ember CLI
* Rails API
* PostgreSQL

## Features
 
* Create new grocery lists with names and descriptions
* Dynamically add one to n list items to a given grocery list
* Save your grocery list and all of its items together at the same time

## Installation

To begin:

Clone the repository locally using `git clone git@github.com:jdetch/Shopmaster.git`

### Frontend

The `frontend` directory represents the Ember CLI portion of the application.

In the terminal:

    cd frontend
    npm install
    bower install 

### Backend

In the terminal:

    cd backend
    bundle install
    rake db:create
    rake db:migrate

### Running the app

From inside the `backend` directory:

    rails server

From inside the `frontend` directory (create a separate tab in the terminal):

    ember server --proxy http://localhost:3000 

You should then be able to browse the app at [http://localhost:4200](http://localhost:4200/).

Get shopping!

#### Versions in use as of this writing

 
Ember      : 1.8.1

Ember Data : 1.0.0-beta.14.1  

Ember CLI  : 0.1.13

Rails      : 4.1.6
