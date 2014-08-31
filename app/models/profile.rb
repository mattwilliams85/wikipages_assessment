class Profile < ActiveRecord::Base 
	validates :name, :presence => :true
	validates :content, :presence => :true
	validates :height, :presence => :true
	validates :ethnicity, :presence => :true
	validates :status, :presence => :true
end