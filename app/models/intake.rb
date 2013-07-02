class Intake < ActiveRecord::Base
  has_many :intakes_pain_qualities
  has_many :pain_qualities, :through=>:intakes_pain_qualities


  def create_pain_qualities(params)
    ids = []
    params.each do |k,v|
      if k.include? "Pain_quality"
        self.pain_qualities << PainQuality.find(k.split("Pain_quality_")[1].to_i)
      end
    end
  end

end
