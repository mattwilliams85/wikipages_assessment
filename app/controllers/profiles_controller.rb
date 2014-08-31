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
		redirect_to('/')
	end

	def edit
		@profile = Profile.find(params[:id])
		render('edit.html.erb')
	end
end