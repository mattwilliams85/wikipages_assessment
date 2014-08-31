class ProfilesController < ApplicationController

	def index
		@profile = Profile.new
		@profiles = Profile.all
		render('index.html.erb')
	end

	def new
		@profile = Profile.new
		render('new.html.erb')
	end

	def create
		@profile = Profile.new(params[:profile])
		if @profile.save
			flash[:notice] = "Profile Created Succesfully!"
			redirect_to("/profiles/#{@profile.id}")
		else
			flash[:alert] = "Unable to create profile:"
			render('new.html.erb')
		end
	end

	def show
		@profile = Profile.find(params[:id])
		render('show.html.erb')
	end

	def destroy
		@profile = Profile.find(params[:id])
		@profile.destroy
		flash[:notice] = "Profile Deleted Succesfully!"
		redirect_to('/')
	end

	def edit
		@profile = Profile.find(params[:id])
		render('edit.html.erb')
	end

	def update
		@profile = Profile.find(params[:id])
		if @profile.update(params[:profile])
			flash[:notice] = "Profile Updated Succesfully!"
			redirect_to('/')
		else
			flash[:alert] = "Unable to update profile"
			redirect_to("/profiles/#{@profile.id}/edit")
		end
	end
end