class EpicenterController < ApplicationController
  before_action :authenticate_user!

  def feed
  	@following_tweets = Array.new

  	Tweet.all.each do |tweet|
  		if current_user.following.include? (tweet.user_id)

  			elsif 
  			 	 current_user.id == tweet.user_id
  					@following_tweets.push(tweet)
  				end
  			end

  			puts "*************************"
  			@following_tweets.each do |tweet|
  				puts tweet.message
  			end

  			puts "*************************"

  end

  def show_user
  	@user = User.find(params[:id])
  end

  def now_following
  	current_user.following.push(params[:id].to_i)
  current_user.save

  redirect_to show_user_path(id: params[:id])
end
  end

  def unfollow
  	current_user.following.delete(params[:id])
  	current_user.save

  	redirect_to show_user_path(id: params[:id])
  
end
