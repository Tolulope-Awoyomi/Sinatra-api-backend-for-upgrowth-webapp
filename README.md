# UpGrowth App (Backend)

This is the backend for the UpGrowth application. It provides a Sinatra-based API for managing aspects and strategies. The backend handles database interactions, allowing the frontend to perform CRUD (Create, Read, Update, Delete) operations on aspects and strategies.

## Backend Setup

Follow these steps to set up the backend of this project:

1. Fork and clone this repository to get started. You can do this by using the "Fork" button at the top right corner of this page.

2. Install the necessary Ruby gems by running:

```bash
bundle install
```

3. Set up the database by running migrations:

```bash
rake db:migrate
```

4. Replace the example GET route handler in the `app/controllers/application_controller.rb` file with routes for your project.

5. Start your server by running:

```bash
bundle exec rake server
```

This will run your server on port `http://localhost:9292`.


