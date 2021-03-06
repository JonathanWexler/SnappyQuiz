class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])

	end

	def update
	  @user = User.find(params[:id])
	  @user.update_attributes(params[:user])
	  respond_with @user
	end

	def new
		@user = User.new
	end

	def edit
		@user = User.find(params[:id])
	end
end
