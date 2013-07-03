json.array!(@medical_equipments) do |medical_equipment|
  json.extract! medical_equipment, :catheter, :wheelchair, :nebulizer, :glasses, :contacts, :hearing_aid
  json.url medical_equipment_url(medical_equipment, format: :json)
end
