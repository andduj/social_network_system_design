Table regions {
  id integer [pk]
  name integer
}

Table users {
  id integer [pk]
  first_name integer
  last_name integer
}

Table marks {
  id integer [pk]
  reaction_id integer
  name varchar
}

Table photos {
  id integer [pk]
  post_id integer
  url varchar
}

Table posts {
  id integer [pk]
  user_id integer
  region_id integer
  description varchar
  created_at datetime
}

Table follows {
  following_user_id integer
  followed_user_id integer
  created_at timestamp
}

Table reactions {
  id integer [pk]
  post_id integer
  user_id integer
  mark_id integer
  created_at datetime
}

Table comments {
  id integer [pk]
  post_id integer
  user_id integer
  text varchar
  created_at datetime
}

Ref: posts.id < photos.post_id
Ref: posts.id < reactions.post_id
Ref: posts.id < comments.post_id
Ref: reactions.id < marks.reaction_id
Ref: regions.id < posts.region_id
Ref: users.id < posts.user_id
Ref: users.id < reactions.user_id
Ref: users.id < comments.user_id
Ref: users.id < follows.following_user_id
Ref: users.id < follows.followed_user_id
