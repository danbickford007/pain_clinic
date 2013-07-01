class IntakesPainQuality < ActiveRecord::Base
  belongs_to :intake
  belongs_to :pain_quality
end
