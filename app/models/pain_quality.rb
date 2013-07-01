class PainQuality < ActiveRecord::Base
  has_many :intakes_pain_qualities
  has_many :intakes, :through=>:intakes_pain_qualities

end
