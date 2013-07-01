module IntakesHelper

  def pain_quality_boxes
    PainQuality.all.collect{|pq| ("#{pq.description} #{check_box_tag "Pain_quality_"+pq.id.to_s} <br />")}.join
  end

  def pain_quality_list(intake)
    intake.pain_qualities.collect{|pq| ("#{pq.description}<br />")}.join
  end

end
