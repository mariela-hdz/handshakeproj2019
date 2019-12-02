require 'httparty'

class Chirp < ApplicationRecord
	include HTTParty

	validates_length_of :text, maximum: 120

#https://www.metaweather.com/api/location/search/?query=fran
	# we want to read our chirp, and take the text and pass that as our argument
	# to the weather api

	#application programing interface
	# route that takes parameters
	def self.related_weather(chirp)
		chirp_text = chirp
		response = HTTParty.get("https://www.metaweather.com/api/location/search/?query=#{chirp_text}
")
		body = JSON.parse(response.body)
		return body



	end
end