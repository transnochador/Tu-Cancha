class Place < ActiveRecord::Base
	belongs_to :person
	has_many :fields
	has_many :services
	has_many :events
	
	validates_uniqueness_of :nameplace,
		:message => "ya existe"
	validates_presence_of :nameplace, :address, :district, :gmaddress,
		:message => "no puede estar vacío"

end
