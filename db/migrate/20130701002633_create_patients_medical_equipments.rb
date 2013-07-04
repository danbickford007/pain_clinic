class CreatePatientsMedicalEquipments < ActiveRecord::Migration
  def change
    create_table :patients_medical_equipments do |t|
      t.integer :patient_id
      t.integer :medical_equipment_id

      t.timestamps
    end
  end
end
