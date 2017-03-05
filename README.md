# hwsapp
web-application for Hinsdale wine shop



## User Stories

As a user I want to:
- Sign up for an account if I am a new user
- Login into my existing account
- View my own favorited wines and posts
- Add a new wine that I like/dislike for others to see
- Edit my created wine/post whenever
- Delete my create wine/post

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

# Wireframes

[Homepage](https://app.moqups.com/snfazal@gmail.com/NUQ7lJcGFD/edit/page/ab42bb62b)

[Blog page](https://app.moqups.com/snfazal@gmail.com/NUQ7lJcGFD/edit/page/a4056f3fe)

[Blog Index](https://app.moqups.com/snfazal@gmail.com/NUQ7lJcGFD/edit/page/a3afaad55)

## Technologies Used

### Front-End
- CSS Framework: [Bulma](http://bulma.io/)
- Angular.js
- Express.js

### Back-End
- Ruby on Rails
- postgresql

## MVP

## Reach Goals
