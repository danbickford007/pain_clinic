class Patient < ActiveRecord::Base

  has_and_belongs_to_many :addresses
  validates :last_name, presence: true, length: { :minimum => 1, :maximum => 50 }
  validates :first_name, presence: true, length: { :minimum => 1, :maximum => 50 }
  validates :email, presence: true, uniqueness: { :case_sensitive => false }, :format => {:with =>/[a-zA-Z1-9]+@{1}[a-zA-Z1-9]+.{1}(com|org|biz|net|edu|gov)/} 
  validates :gender, presence: true
  validates_length_of :gender, :is =>1
  validates :height, presence: true
  validates :weight, presence: true
  validates :ssn, presence: true
  validates_length_of :ssn, :is => 9
  validates :marital_status, presence: true
  validates :dob, presence: true

  def self.search(ssn, last_name)
    patients = []
    patients += where(:ssn=>ssn)
    patients += where(:last_name=>last_name)
    patients.uniq
  end

  def to_s
    "#{first_name} #{last_name}"
  end


end
