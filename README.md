# hwsapp
web-application for Hinsdale wine shop


# ERD

### User
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

### Wine
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

### Post
```
id: Number,
post: String,
description: String,
user_id: String,
created_at: Date,
last_updated: Date
```


# Wireframes
