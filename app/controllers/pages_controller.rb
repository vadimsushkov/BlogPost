class PagesController < ApplicationController
	def about
		@title = "About us"
	end

	def registration
		@title = "Registration"
	end
end
