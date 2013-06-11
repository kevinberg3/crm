require_relative "contactcrm"
require_relative "databasecrm"

db = Database.new
id = 100000

	puts "**********************************************************************"
	puts "\n#{"********************Welcome to Kevin's CRM****************************"}\n\n"
	puts "\n**********************************************************************"		

	loop do	
			
		puts "\n#{"Please enter in add / modify / display all / display contact / display attribute / delete / exit"}\n\n"
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
		
			# puts "inside 'add', the value of db is: #{db}"
			db.add(id, firstname, lastname, email, notes)
			id += 1

			puts "Upload successful!"

		when "modify"
		puts "\nEnter attribute you wish to modify (ie the first name, last name, email, notes of the contact you wish to modify) \n"
		 	change_attrib = gets.chomp.downcase.to_s
		 	puts "\n Enter attribute you wish to change from #{change_attrib}, (id, first name, last name, email, notes \n"
		 	attribute_to_change = gets.chomp
		 	puts "\n Enter new value for attribute you wish to modify"
		 	attribute_modified = gets.chomp

		 	db.modify_contact(change_attrib, attribute_to_change, attribute_modified)
		 	puts "\n You've successfully modifed the contact!\n"
		 			
		when "display all"
			db.display_all_contacts
		
		when "display contact"
			puts "Please enter in the first name, last name, id, email or notes of the customer you wish to find"
			find_customer = gets.chomp.downcase.to_s
			db.display_particular_contact(find_customer)

		when "display attribute"
			puts "\nPlease enter in the attribute you wish to view by (first name, last name, email, notes)\n"
			gather_attribute = gets.chomp.downcase.to_s
			puts "\n The following customers have been entered according to the following attribute #{gather_attribute}\n"
			puts db.display_info_by_attribute(gather_attribute)

		when "delete"
			puts "Enter the first name, last name, email or notes on the contact that you wish to delete"
			delete_request = gets.chomp.downcase.to_s
			puts "\nAre you sure you want to delete this contact? (enter 'yes' or 'no')\n"
			delete_request_validity = gets.chomp.downcase.to_s
			if delete_request_validity == "yes"
			db.delete_contact(delete_request)	
			puts "\nContact has been removed from the system! Time to get more customers!\n"


			else
				puts "No contact has been removed!"
			end
		
		when "exit"
			 puts "Adios!"
			break
end

end
	
	


# crm_runner.run