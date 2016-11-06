class Beat < ActiveRecord::Base
	has_one :chord
	belongs_to :measure
end
