module IntakesHelper

  def pain_quality_boxes
    PainQuality.all.collect{|pq| ("<tr><td>#{pq.description}</td><td>#{check_box_tag "Pain_quality_"+pq.id.to_s, false, false, :class=>'right'}</td></tr>")}.join
  end

  def pain_quality_list(intake)
    intake.pain_qualities.collect{|pq| ("#{pq.description}<br />")}.join
  end

end
