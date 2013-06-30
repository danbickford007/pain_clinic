class Patient < ActiveRecord::Base

validates :last_name, presence: true, length: { :minimum => 1, :maximum => 50 }
validates :first_name, presence: true, length: { :minimum => 1, :maximum => 50 }
validates :email, presence: true, uniqueness: { :case_sensitive => false }
validates :gender, presence: true
validates_length_of :gender, :is =>1
validates :height, presence: true
validates :weight, presence: true
validates :ssn, presence: true
validates_length_of :ssn, :is => 9
validates :marital_sataus, presence: true
validates :dob, presence: true



add_index :email, unique: true


end
