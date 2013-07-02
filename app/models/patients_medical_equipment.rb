class PatientsMedicalEquipment < ActiveRecord::Base

has_and_belongs_to_many :patient
has_and_belongs_to_many :medical_equipment

end
