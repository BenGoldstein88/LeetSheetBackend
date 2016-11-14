class SongsController < ApplicationController

	def index

		@songs = Song.all

		data = {songs: @songs}

		render json: data

	end

	def new_section
		@song = Song.find(params[:id])
		# @sections = @song.sections
		@new_section = Section.new(name: "", num_measures: 8, song_id: @song.id)
		@tempMeasure = Measure.new(num_beats: 4, measure_number: 1, chords: ['C', '', '', ''], section_id: @new_section.id)
		@new_section.save!
		@tempMeasure.save!
		# @song.save!
		# @sections.push(@new_section)

		data = {
			response: 'New Section Added to Song with id ' + @song.id.to_s
		}

		render json: data

	end

	def show
		@song = Song.find(params[:id])
		# @song = Song.first
		@sections = @song.sections
		@measures_map = {}
		@sections.each do |section|
			@measures_map[section.id] = section.measures.to_a
		end

		data = {
			song: @song,
			sections: @sections,
			measures: @measures_map
		}
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
