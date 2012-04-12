class Place < ActiveRecord::Base
	belongs_to :person
	has_many :fields
	has_many :services
	has_many :events
	
	validates_uniqueness_of :nameplace
	validates_presence_of :nameplace
	validates_presence_of :address
	validates_presence_of :district
	validates_presence_of :gmaddress
end
