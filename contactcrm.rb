#

require_relative "databasecrm.rb"

class Contact

attr_accessor :id, :firstname, :lastname, :email, :notes


	def initialize
		@contact = {
		:@id => id_number,
		:@firstname => "",
		:@lastname =>  "",
		:@email => "",
		:@notes => ""
	}

	end


	def valid_contact(contact)
		# begin
		if @contact.include? nil
			#send back to initial puts query to collect @contact
		else
			create_contact
		 # rescue Exception => e??
		 	
		 end 
			


	def create_contact(input)

	
	def display_all_contact

	def id_number
		

