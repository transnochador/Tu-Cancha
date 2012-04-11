class Field < ActiveRecord::Base
	belongs_to :place
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	
	validates_uniqueness_of :fieldname
	validates_presence_of :fieldname
	validates_presence_of :fieldwidth
	validates_presence_of :fieldlength
	validates_presence_of :fieldground
	validates_presence_of :starthour
	validates_presence_of :endhour
	validates_presence_of :dayrate
	validates_presence_of :nightrate
	validates_presence_of :promo
end
