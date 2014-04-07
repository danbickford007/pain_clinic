class CreatePatientsMedicalEquipments < ActiveRecord::Migration
  def self.up 
    create_table :patients_medical_equipments do |t|
      t.boolean :catheter
      t.boolean :wheelchair
      t.boolean :nebulizer
      t.boolean :glasses
      t.boolean :contacts
      t.boolean :hearing_aid

      t.timestamps
    end
  end
  
  def self.down
    drop_table :patients_medical_equipments do |t|
      t.boolean :catheter
      t.boolean :wheelchair
      t.boolean :nebulizer
      t.boolean :glasses
      t.boolean :contacts
      t.boolean :hearing_aid

      t.timestamps

  end
  end
end
