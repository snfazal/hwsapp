class PostsController < ApplicationController

def create
  puts post_params
  post = current_user.posts.new(post_params)
  puts post
  if post.save
    render json: { status: 201, post: post}
  else
    render json: { status: 422, user: post.errors}
  end
end

def show
  render json: { status: 200, post: Post.find(params[:id]) }
end

def index
  render json: { status: 200, post: Post.all }
end

def update
  post = Post.find(params[:id])
  post.update(post_params)

  render json: { status: 200, post: post }
end

def destroy
  Post.destroy(params[:id])

  render json: { status: 204, message: 'resource DELETED successfully', post: current_user.posts }
end

def post_params
  params.required(:post).permit(:body, :description, :user_id)
end
end
