class SongsController < ApplicationController

	def show

		@songs = Song.all

		data = {songs: @songs}

		render json: data

	end

	def create
		@song = Song.new(name: params["songName"], composer: params["composer"], transcriber: params["transcriber"])
		@song.save!
		p @song
		render json: {hello: 'hello'}		
	end

end
