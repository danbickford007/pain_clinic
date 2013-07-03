class CreateMedicalEquipments < ActiveRecord::Migration
  def change
    create_table :medical_equipments do |t|
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
