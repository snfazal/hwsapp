# User
id: Number,
username: String,
email: String,
phone_number: Number,
password_digest: String,
favorite_id: Integer, (has one)
favorite_users: Integer, (has many through favorite)
favorite_posts: Integer, (has many through favorite)
created_at: Date,
last_updated: Date

# Wine
id: Number,
name: String,
type: String,
country_of_origin: String,
region: String,
rating: Number,
description: String,
created_by: Integer, (user id)
created_at: Date,
last_updated: Date

# Post
id: Number,
post: String,
description: String,
created_by: Integer,
created_at: Date, (user id)
last_updated: Date

# Favorite
id: Integer,
wine_id: Integer,
post_id: Integer
