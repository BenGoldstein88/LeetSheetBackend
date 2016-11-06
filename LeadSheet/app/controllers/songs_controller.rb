class SongsController < ApplicationController

	def show

		@songs = Song.all

		data = {songs: @songs}

		render json: data

	end

	def create
		p params

		render json: {hello: 'hello'}		
	end

end
