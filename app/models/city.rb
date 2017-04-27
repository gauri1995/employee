class City < ApplicationRecord
	has_many :employees
	validates :name , uniqueness:true , presence:true
	
end
