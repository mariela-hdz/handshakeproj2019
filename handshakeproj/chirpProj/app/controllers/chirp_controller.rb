class ChirpController < ApplicationController
	def index
		@chirps = Chirp.all
		@wetherData = Chirp.related_weather('fran')
	end
end