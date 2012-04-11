class Place < ActiveRecord::Base
	has_many :fields
	
	validates_uniqueness_of :nameplace
	validates_presence_of :nameplace
	validates_presence_of :address
	validates_presence_of :district
	validates_presence_of :gmaddress
end
