json.array!(@intakes) do |intake|
  json.extract! intake, :complaint_1, :complaint_2, :complaint_3, :illness_history, :pain_now, :least_pain_one_week, :worst_pain_one_week, :average_pain_last_week, :pain_duration, :pain_timing, :context_of_pain, :modifying_factors, :signs_and_sympotoms, :general_activity, :mood, :normal_work, :sleep, :enjoyment, :concentration, :interaction_with_others, :current_pain_meds, :patient_id
  json.url intake_url(intake, format: :json)
end
