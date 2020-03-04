## OSU Course Search

![OSU-course-search](https://imgur.com/ONiZ0mA.jpeg 'Sample')

## Description

Wondering how hard your next class might be? Did other students think CS162 was a bloodbath, too? This app can tell you!

The OSU eCampus subreddit collects course reviews from real students into this spreadsheet, but the spreadsheet is large and hard to navigate. This app lets you view individual course reviews and aggregates difficulty ratings and time spent.

This project was generated with the Ruby on Rails 5.2

https://osu-course-search.herokuapp.com/

## Author

This project was created entirely by Naohito Muraoka by using ruby on rails with HTML, CSS, Javascript. I am looking for other developer to work both for improving this projects and for working with another projects using Ruby on Rails.

## Setup

You can create a local copy of this project if you'd like. Make sure you have Ruby and PostgreSQL are installed. If you need help with that, use these guides:

-   [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)
-   [Install PostgreSQL](https://www.postgresqltutorial.com/install-postgresql/)

Once Ruby is installed, set up the project:

1. Clone this repo `git clone https://github.com/nao4869/OSU-class-search`
2. Install the ruby packages: `bundle install`
3. Seed the database: `rails db:seed`
    - 3a. If needed, complete the data migration with `rails: db_migrate`
4. Start the server: `rails server` / `rails s` / `rails`
5. View the project on your local ruby server in your browser: [http://localhost:3000](http://localhost:3000)