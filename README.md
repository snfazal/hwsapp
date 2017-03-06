# hwsapp
web-application for Hinsdale wine shop

## Overview
Sommlife is a web application built using a Rails back-end and an Angular front-end. The purpose of this application is to bring collaboration to how our users drink wine everyday. Working as a social media platform, Sommlife allows users to upload their favorite, or not so favorite wines as they please. Users can view all favorited wines on the platform, as well as posts created by other users about wines.

The application uses mock data that we have seeded into our back-end in order to simulate our user interface. Below is the planning process over the last 5 days that we used to create Sommlife.


## User Stories

As a user I want to:
- Sign up for an account if I am a new user
- Login into my existing account
- View my own favorited wines
- Add a new wine that I like/dislike for others to see
- Edit my created wine/post
- Delete my create wine/post
- Login into my account to view my favorites on the favorited page


## Models
User - Standard user account features for current_user
Wines - Full CRUD
Posts - Full CRUD
Favorites - Saves wines or posts for current_user

## Active Record Associations

## ERD

### Entities
#### User
```
id: Number,
username: String,
email: String,
phone_number: Number,
password_digest: String,
favorite_wines: has_and_belongs_to_many :wines,
favorite_posts: has_and_belongs_to_many :posts,
created_at: Date,
last_updated: Date
```

#### Wine
```
id: Number,
name: String,
type: String,
country_of_origin: String,
region: String,
rating: Number,
description: String,
created_at: Date,
last_updated: Date
belongs_to :
```

#### Post
```
id: Number,
post: String,
description: String,
user_id: String,
created_at: Date,
last_updated: Date
```
### SQL Tables
Favorites:
- t.integer  "wine_id"
- t.datetime "created_at", null: false
- t.datetime "updated_at", null: false
- t.integer  "user_id"

Posts:
- t.string   "body"
- t.string   "description"
- t.datetime "created_at",  null: false
- t.datetime "updated_at",  null: false

Users:
- t.string   "username"
- t.string   "email"
- t.integer  "phone_number"
- t.string   "password_digest"  

Wines:
- t.string   "name"
- t.string   "kind"
- t.string   "country"
- t.string   "region"
- t.integer  "rating"
- t.string   "description"
- t.integer  "user_id"
## Wireframes

[Homepage](/public/img/homepage.png)

[Blog page](/public/img/postshow.png)

[Blog Index](/public/img/favorite.png)

## Technologies Used

### Front-End
- CSS Framework: [Bulma](http://bulma.io/)
- HTML5
- Angular.js
- Express.js

### Back-End
- Ruby on Rails
- postgresql

## MVP
- Create 3 models: Users, Posts, Wine, (and Favorites!)
- User Routes: Signup, Login, Logout
- Wine Routes: Create, Read, Update, Destroy
- Post Routes: Full CRUD
- User Authentication
- Website Design

## Reach Goals
- Add Post route for user posts
- Add a favorites model to enable users to favorite wines
- Add a framework for CSS styling
- Be able to search wines by categories for user
- Add external API for wines (lack on market)
- Admin Panel for weekly blog posts to be scheduled
- Add user collaborated ratings to be seen on favorites

## Project Challenges

Favorites Model:

One of our earliest challenges came about as we set up and review our routes. We knew we wanted Users to be able to be able to favorite products and in turn share those favorites in order to ignite a community atmosphere within our application. We solved this issue by setting up Active Record Associations between wines, posts and favorites. We needed to add foreign_keys onto both wines and posts so that individual wines could then be favorited and added to the current_user's account.

Styling Images with Bulma:

Our final challenge came about just before it was time to present our application. We had trouble manipulating Bulma to make the image_urls align with the responsive design we so desired. Our fix to this issue can 

## Final Thoughts
Furthermore, we're quite pleased with the product we were able to produce in just 5 days time. As a team we collaborated on both the front and back-end of the project. Initially, we chose to pair program the
