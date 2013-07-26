class AddPatientIdToPatientsMedicalEquipment < ActiveRecord::Migration
  def self.up 
      add_column :patients_medical_equipment, :patient_id, :string

  end
  
  def self.down

      remove_column :patients_medical_equipment, :patient_id
  end

end
