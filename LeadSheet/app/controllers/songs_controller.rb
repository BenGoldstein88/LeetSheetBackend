class SongsController < ApplicationController

	def index

		@songs = Song.all

		data = {songs: @songs}

		render json: data

	end

	def show
		# @song = Song.find(params[:id])
		@song = Song.first
		@sections = @song.sections
		@sections.each do |section|
		
		end

		data = {}
		# data = {
		# 	song: @song,
		# 	sections: @sections,
		# 	measures: @measures,
		# 	beats: @beats,
		# 	chords: @chords,
		# 	roots: {}
		# }

		render json: data


	end



	def create
		@song = Song.new(name: params["songName"], composer: params["composer"], transcriber: params["transcriber"])
		@song.save!
		p @song
		render json: {hello: 'hello'}		
	end

end
