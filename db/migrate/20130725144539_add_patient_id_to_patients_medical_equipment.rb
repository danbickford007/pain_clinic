class AddPatientIdToPatientsMedicalEquipment < ActiveRecord::Migration
  def self.up 
      add_column :patients_medical_equipments, :patient_id, :string

  end
  
  def self.down

      remove_column :patients_medical_equipments, :patient_id
  end

end
