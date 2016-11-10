# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.destroy_all
Section.destroy_all
Measure.destroy_all
# Beat.destroy_all
# Chord.destroy_all
# Root.destroy_all

song = Song.create!(name: "Test Song Number 1", composer: "Tim", transcriber: "Tom")
section = Section.create!(name: "Verse 1", num_measures: 8, song_id: song.id)
measure = Measure.create!(num_beats: 4, measure_number: 1, chords: ['C', nil, 'F', nil], section_id: section.id)

letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G']
simple_accidentals = ['', '#', 'b']
qualities = ['', 'maj', 'min', '+', 'dim']
numbers = ['', '7', '9', '11', '13']
suspensions = ['sus2', 'sus4']
# additions =  ['add9's, 'add11', 'add13']
# accidentals = ['#', 'b', '*', 'bb']

chords = {}

letters.each do |letter|
	current_letter_chords = []
	simple_accidentals.each do |accidental|
		power_chord = letter+'5'
		current_letter_chords.push(power_chord)
		qualities.each do |quality|
			current_chord = letter+accidental+quality
			current_letter_chords.push(current_chord)
			numbers.each do |number|
				current_chord = letter+accidental+quality+number
				current_letter_chords.push(current_chord)
				suspensions.each do |suspension|
					current_chord = letter+suspension
					current_letter_chords.push(current_chord)
					current_chord = letter+accidental+suspension
					current_letter_chords.push(current_chord)
					current_chord = letter+number+suspension
					current_letter_chords.push(current_chord)
					current_chord = letter+accidental+number+suspension
					current_letter_chords.push(current_chord)
				end
			end

		end
	end
	chords[letter] = current_letter_chords
end


# beat_one = Beat.create!(measure_id: measure.id)
# beat_one_chord = Chord.create!(name: 'Gm7', beat_id: beat_one.id)
# beat_one_chord_root = Root.create!(chord_id: beat_one_chord.id)


# # song.sections = [section]
# # section.measures = [measure, nil, nil, nil]
# # measure.beats = [beat_one, nil, nil, nil]
# # beat_one.chord = beat_one_chord
# # beat_one_chord.root = beat_one_chord_root

p song
p section
p measure
# p beat_one
# p beat_one_chord
# p beat_one_chord_root

