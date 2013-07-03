class PatientsMedicalEquipment < ActiveRecord::Base

belongs_to :patient
belongs_to :medical_equipment

end
