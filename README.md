# Tweety

Small Social Network, where you can create, edit, delete and comment on posts you can also find friends to see what they share.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

- Install `ruby` version `2.4.2` for this project.
- Install `mysql server`.

### Installing

After clone the project please move to folder and run the next line command to install all gems

```ruby
$ bundle install
```

I use `figaro` gem to configure `ENV` variables, so you need to run this command to create your `application.yml` inside `config` folder and add it to `.gitignore`

```ruby
$ bundle exec figaro install
```

Add this lines to `config/application.yml` with your values:

```ruby
database_host: "localhost"
database_username: "root"
database_password: ""
facebook_id: ""
facebook_secret: ""
```

## Built With

* [Ruby on Rails](https://github.com/rails/rails) - The web framework used
* [Figaro](https://github.com/laserlemon/figaro) - ENV variables manager
* [Carrierwave](https://github.com/carrierwaveuploader/carrierwave) - Used to file uploads
* [Act as votable](https://github.com/ryanto/acts_as_votable) - Votable ActiveRecord
* [Omniauth facebook](https://github.com/mkdynamic/omniauth-facebook) - Facebook OAuth2 Strategy for OmniAuth

## Screenshots

### Home/Login
![Login](https://user-images.githubusercontent.com/5151682/43353467-7d62e960-91ff-11e8-8c4d-04c9b907762f.png)

### Forgot your password?
![Forgot](https://user-images.githubusercontent.com/5151682/43353475-97ad4afe-91ff-11e8-9e13-4687ae35fa83.png)

### Dashboard
![Dashboard](https://user-images.githubusercontent.com/5151682/43353480-b576bee4-91ff-11e8-850f-fb3802609256.png)

### Profile
![Profile](https://user-images.githubusercontent.com/5151682/43353486-d8a7539c-91ff-11e8-8dce-10a76499e02a.png)

### Configuration
![Configuration](https://user-images.githubusercontent.com/5151682/43353499-fc79f568-91ff-11e8-8ede-253c00908c3f.png)

### New post
![New Post](https://user-images.githubusercontent.com/5151682/43353522-5e51f06a-9200-11e8-9530-a72b0b4d5929.png)

## Authors

* **David Sanchez** - *Github* - [Sanchezdav](https://github.com/Sanchezdav)
