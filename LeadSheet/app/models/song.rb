class Song < ActiveRecord::Base
	has_many :sections

	validates :name, :composer, :transcriber, presence: true


end

