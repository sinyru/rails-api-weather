# Link
## [Entity Relational Diagram](http://imgur.com/a/xqk6j)
## [My Front End Repository Link](https://github.com/sinyru/ember-weather)
## [Deployed Front End Link: Ember Weather](https://sinyru.github.io/ember-weather/)
## [Deployed Back End Link: Heroku](https://fierce-bayou-10778.herokuapp.com/)

# Tasks

- Enables an application that can be used to search weather conditions in the U.S. via inputting a city name or zip code, and create custom apparels.
- Use Ruby on Rails to build an API and created two related models(users and apparels) and  unrelated model(weathers).
- Include all crud functions in RESTful API for the apparel model.
- Use third api, OpenWeatherMap, for data to the weather model.

# Approach I Took

My approach to the project is to plan then trial and errors.
On the first day of the project, I did plannings on what the entity relational diagram should look like. I researched, googled, and seek advice from people to make this project feasible in 6 days that was given to me. After figuring the ERD out, I made an user table in which each user will have many apparels, and as well as using a third api for capturing weather conditions.
With the ERD made, I went and used the rails api template from General Assembly. Then, I generate scaffold the tables for all 3 models. I first worked on the weather controller as it is the first time I utilized a third api. I wrote scripts and tested them out with the action I wrote inside that controller. After successfuly capturing data from the third api, I went and test the other two models.
Basically, it's with many trials and errors approach that made this api work.

# List of API Routes

```
resources :apparels, except: [:new, :edit]
resources :weathers, only: [:show, :index]
resources :examples, except: [:new, :edit]
post '/sign-up' => 'users#signup'
post '/sign-in' => 'users#signin'
delete '/sign-out/:id' => 'users#signout'
patch '/change-password/:id' => 'users#changepw'
resources :users, only: [:index, :show]
```

# Installation Instructions
- Fork and clone this repository.
- Install with bundle install.

# Technologies Used
- Ruby on Rails: Framework optimized for sustainable programming productivity, Used to create the API
- github: Repository
- git: Working tree, staging area

# Unsolved Problems or Major Hurdles

Apparently, there are no unsolved problems currently as I only planned just enough. All the features I anticipated to implement has been successfully implemented, WHICH was the third api from openweathermap. Although, I will have to say it took me some time and researches before I was able to use the openweathermap api.
