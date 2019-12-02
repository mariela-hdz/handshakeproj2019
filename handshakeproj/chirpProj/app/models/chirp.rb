class Chirp < ApplicationRecord
	validates_length_of :text, maximum: 120
end