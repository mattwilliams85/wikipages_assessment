class ProfilesController < ApplicationController

	def index
		@profiles = Profile.all
		render('index.html.erb')
	end

	def new
		@profile = Profile.new
		render('new.html.erb')
	end

	def create
		@profile = Profile.new(params[:profiles])
		if @profile.save
			redirect_to('/profiles/#{@profile.id}')
		else
			flash[:alert] = "Unable to create profile:"
			render('/profiles/new')
		end
	end
end