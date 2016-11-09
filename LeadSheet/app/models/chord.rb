class Chord
	# has_one :root

	attr_accessor :name, :root, :alternate_root


	def initialize(args = {})
		@name = args.fetch(:name, 'Cm7')
		@root = args.fetch(:root, 'C')
		@alternate_root = args.fetch(:alternate_root, nil)
	end


end