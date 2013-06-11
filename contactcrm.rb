require_relative "databasecrm"

class Contact

attr_accessor :id, :firstname, :lastname, :email, :notes


	def initialize(id, firstname, lastname, email, notes)
		@id = id
		@firstname = firstname
		@lastname =  lastname
		@email = email
		@notes = notes
	end
#initializing the values within the Contact class to be used to display the relevant contact information

	def display_contact
		puts "ID:             #{@id}"
		puts "First Name:     #{@firstname}" 
		puts "Last Name:      #{@lastname}"
		puts "Email Address:  #{@email}"
		puts "Notes on User:  #{@notes}"  
	end

end