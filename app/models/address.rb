class Address < ActiveRecord::Base

has_and_belongs_to_many :patients

validates :addr_one, :presence => true,:length => {:minimum => 1, :maximum => 75}
validates :city, :presence => true, :length => :maximum => 50
validates :state, :presence => true
validates_length_of :state, :is => 2
validates :zip, :presence => true
validates_length_of :zip, :is => 5





end
