class Event < ActiveRecord::Base
	belongs_to :place
	
	validates_presence_of :place_id, :evname, :evprize, :evnummax, :evdeadline,
		:message => "no puede estar vacío"
end
