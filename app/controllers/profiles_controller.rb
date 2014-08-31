class ProfilesController < ApplicationController

	def index
		@profiles = Profile.all
		render('index.html.erb')
	end

end