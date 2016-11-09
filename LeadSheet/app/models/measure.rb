class Measure < ActiveRecord::Base
	belongs_to :section
	# has_many :beats


	# DEFAULT_MEASURE_LENGTH = 4

	# def initialize(args = {})
	# 	@beats = args.fetch(:beats, {'1': Chord.new(name: 'Cm7', root: 'C', alternate_root: nil), '2': nil, '3': nil, '4': nil})

	# 	@chords = []

	# 	@beats.each do |beat_num, chord|
	# 		if chord
	# 			@chords.push(chord)
	# 		else
	# 			@chords.push(nil)
	# 		end
	# 	end

	# end

	def print
		output = ''
		self.chords.each do |chord|
			if chord
				if chord.is_a? String
					output += chord
				else
					output += chord.name
				end
			else
				output += " "
			end
		end
		output
	end






end
