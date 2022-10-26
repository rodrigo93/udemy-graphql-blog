# README

This a simple repository to resolve a Udemy GraphQL homework.
The idea is to create a GraphQL api to return users and their posts.

## Stack

- Ruby on Rails 7.0.4
- Ruby 3.0.2
- GraphQL
- SQLite3

## Running the service

### Setup

Once you have all required packages installed, run:

```sh
$ bundle install
```

Now you need to setup the database and populating it with some dummy data by running:

```sh
$ rake db:migrate
```

### Running the service

To run the service you only need to run the following command to start the service at `http://localhost:3000`

```sh
$ rails s
```

To query the GraphQL API, the address is `http://localhost:3000/graphql`