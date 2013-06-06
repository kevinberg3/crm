#Runner
require_relative "contactcrm.rb"
require_relative "databasecrm.rb"

class Crm_runner

def intialize 
	@contact = []
	def self.run
		@crm = crm.new()
		
		puts "\n#{"Please enter in add / modify / display all / display contact / display attribute / delete / exit".center(100)}\n\n"
		gets.chomp.downcase.to_s = first_response

		when first_response.include? "add"
			puts "Enter first name"
			first_name = gets.chomp.downcase.to_S 
			puts "Enter last name"
			last_name = gets.chomp.downcase.to_s 
			puts "Enter email address"
			email_address = gets.chomp.downcase.to_s 
			puts "Enter any notes"
			notes = gets.chomp.downcase.to_s 

			contact.new << first_name << last_name << email_address << notes

				
		when first_response == "modify"
			 modify_contact

		when first_response == "display all"
			
			#puts @contact??
			#need to figure out how to access all contacts and print them

		when first_response == "display contact"
			display_particular_contact # need to include function that allows to find contact
			
		when first_response == "display attribute"
			# need to include function that allows to find contact then sort by attribute 

		when first_response == "delete"
			#find contact and how to remove contact

		when first_response == "exit"
			#figure out how to exit command line

		else
			# raise exception

		end

def search
	puts ""

end
		# 		while true
		# 	puts "#{@game.board}\n\n"
		# 	puts "\nPlayer #{@game.player_turn}: Please take your turn \n"
		# 	number = gets.chomp.to_i
		# 	@game.(number)       #turn(number)
		# 	#@game.did_player_win?
		# end


crm_runner.run