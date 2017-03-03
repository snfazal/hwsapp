class PostsController < ApplicationController

def create
  puts post_params
  posts = current_user.posts.new(posts_params)
  puts post
  if post.save
    render json: { status: 201, post: post}
  else
    render json: { status: 422, user: post.errors}
  end
end
