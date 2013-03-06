class UserFriendshipsController < ApplicationController
	before_filter :authenticate_user!, only: [:new]
	def new
		if params[:friend_id]
			@friend = User.find(params[:friend_id])
			@user_friendship = current_user.user_friendships.new(friend: @friend)
		else


			flash[:error] = "Friend Required"

		end
		end
	end