# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Song.delete_all!
# Section.delete_all!
# Measure.delete_all!
# Beat.delete_all!


song = Song.create!(name: "Test Song Number 1", composer: "Tim", transcriber: "Tom")

section = Section.create!(name: "Verse 1", song_id: song.id)

measure = Measure.create!(num_beats: 4, section_id: section.id)

beat_one = Beat.create!(measure_id: measure.id)

beat_one_chord = Chord.create!(number: 7, modifications: '#5b9', beat_id: beat_one.id)

p song
p section
p measure
p beat_one
p beat_one_chord

