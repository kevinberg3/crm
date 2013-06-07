#Runner
# require_relative "./contactcrm.rb"
require_relative 'databasecrm'

db = Database.new
id = 100000

	puts "**********************************************************************"
	puts "\n#{"********************Welcome to CRM*****************************"}\n\n"
	puts "\n**********************************************************************"		

	loop do	
			
		puts "\n#{"Please enter in add / modify / display all / display contact / display attribute / delete / exit".center(100)}\n\n"
		firstresponse = gets.chomp.downcase.to_s 

		case firstresponse
		when "add"
			puts "Please enter first name"
			firstname = gets.chomp.downcase.to_s
			puts "Please enter last name"
			lastname = gets.chomp.downcase.to_s 
			puts "Please enter email address"
			email = gets.chomp.downcase.to_s 
			puts "Please enter any notes"
			notes = gets.chomp.downcase.to_s 
		
			db.add(id, firstname, lastname, email, notes)
			id += 1

	
		when "modify"
			puts "\n#{Select attribute you wish to modify (first name, last name, email, notes}\n"

			when "first name"


		when "display all"
			puts contact #Doesn't seem to be correct

		when "display contact"
			puts "Please enter in attribute of the customer you wish to find"
			keyword = gets.chomp.downcase.to_s

		when "display attribute"


		when "delete"

		when "exit"
# 			#figure out how to exit command line

# 		else
# 			# raise exception
	end
end


puts @contact


# 		when "modify"
# 			 modify_contact

# 		when "display all"
			
# 			#puts @contact??
# 			#need to figure out how to access all contacts and print them

# 		when "display contact"
# 			display_particular_contact # need to include function that allows to find contact
			
# 		when "display attribute"
# 			# need to include function that allows to find contact then sort by attribute 

# 		when "delete"
# 			#find contact and how to remove contact



# 		end

# def search
# 	puts ""

# end
# 		# 		while true
# 		# 	puts "#{@game.board}\n\n"
# 		# 	puts "\nPlayer #{@game.player_turn}: Please take your turn \n"
# 		# 	number = gets.chomp.to_i
# 		# 	@game.(number)       #turn(number)
# 		# 	#@game.did_player_win?
# 		# end


# crm_runner.run