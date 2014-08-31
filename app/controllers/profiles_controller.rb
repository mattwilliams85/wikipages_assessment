class ProfilesController < ApplicationController

	def index
		@profiles = Profile.all
		render('index.html.erb')
	end

	def new
		@profile = Profile.new
		render('new.html.erb')
	end
	
end