class SongsController < ApplicationController

	def show

		@songs = Song.all

		data = {songs: @songs}

		render json: data

	end

end
