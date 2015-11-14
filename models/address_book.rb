
# Load the 'entry.rb' library relative to address_book rb's file path
require_relative 'entry'

class AddressBook
	attr_accessor :entries

	def initialize
		@entries = []
	end

# Create a variable to store 'Index'
	def add_entry(name, phone_number, email)
		index = 0 
		@entries.each do |entry|
			# If name lexicographically proceeds entry.name, insert name there
			if name < entry.name
				break
			end
			# Otherwise, keep incrementing index and comparing with other entries until find the place to insert
			index += 1
		end

		@entries.insert(index, Entry.new(name, phone_number, email))
	end

end


