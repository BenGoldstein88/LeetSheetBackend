class Section < ActiveRecord::Base
	has_many :measures
	belongs_to :song


end
