require_relative "contactcrm.rb"

class Database

attr_accessor :contacts

	def initialize
		@contacts = Array.new

	end
#adds in contact is working!
	def add(id, firstname, lastname, email, notes)
		temporary_contact = Contact.new(id, firstname, lastname, email, notes)

		puts "inside Database::add, temporary_contact is #{temporary_contact}"
		puts "@contacts is #{@contacts.class}"
		@contacts << temporary_contact
	end

### Need to figure out still...
	def modify_contact(change_attrib, attribute_to_change, attribute_modified)
		contact = @contacts.detect do |contact|
			(contact.id == change_attrib) || (contact.firstname == change_attrib) || (contact.lastname == change_attrib) || (contact.email == change_attrib)
		end
		if contact 
			contact.send(attribute_to_change + '=', attribute_modified) rescue nil
		end
	end
		
#displays all contacts - is working!
	def display_all_contacts
 		@contacts.each { |i| i.display_contact }
 	end
 #is working!
	def display_particular_contact(find_customer)
 		@contacts.each { |x| 
 			if (x.id == find_customer)
 				x.display_contact
 			elsif (x.firstname == find_customer)
 				x.display_contact
 			elsif (x.lastname == find_customer)
				x.display_contact 					
 			elsif (x.email == find_customer)
 				x.display_contact
 			elsif (x.notes == find_customer)
 				x.display_contact 
			end }
  	end

#working!
	def display_info_by_attribute(gather_attribute)
 		attribute_array = []
 		@contacts.each { |x| 
 		attribute_array << x.id if "id" == gather_attribute
 		attribute_array << x.firstname if "first name" == gather_attribute
 		attribute_array << x.lastname if "last name" == gather_attribute
 		attribute_array << x.email if "email" == gather_attribute
 		attribute_array << x.notes if "notes" == gather_attribute
 		 } 
 		return attribute_array
 	end 
 		
#working!
 	def delete_contact(delete_request)
 		@contacts.each { |x| 
 			if (x.id == delete_request)
 				@contacts.delete(x)
 			elsif (x.firstname == delete_request)
 				@contacts.delete(x)
 			elsif (x.lastname == delete_request)
				@contacts.delete(x)					
 			elsif (x.email == delete_request)
 				@contacts.delete(x)
 			elsif (x.notes == delete_request)
 				@contacts.delete(x) 
 			end }
 	end
	
end

  	
