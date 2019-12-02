class ChirpController < ApplicationController
	def index
		@chirps = Chirp.all
	end
end