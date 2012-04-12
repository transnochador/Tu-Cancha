class Service < ActiveRecord::Base
	belongs_to :place
	
	validates_presence_of :place_id
	validates_presence_of :svctype
	validates_presence_of :svcprice
	validates_presence_of :svcpriceconcept
	validates_presence_of :svcdescription
end
