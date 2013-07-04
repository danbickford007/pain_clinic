json.array!(@patient_histories) do |patient_history|
  json.extract! patient_history, :alcohol, :drinks_per_day, :years_been_drnking, :smoking, :packs_per_day, :years_been_smoking, :illicit_drugs, :religion, :sibling_description, :surgical_history, :medical_history, :allergies, :allergy_description
  json.url patient_history_url(patient_history, format: :json)
end
