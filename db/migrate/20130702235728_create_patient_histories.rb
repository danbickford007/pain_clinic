class CreatePatientHistories < ActiveRecord::Migration
  def change
    create_table :patient_histories do |t|
      t.boolean :alcohol
      t.integer :drinks_per_day
      t.integer :years_been_drnking
      t.boolean :smoking
      t.integer :packs_per_day
      t.integer :years_been_smoking
      t.text :illicit_drugs
      t.text :religion
      t.text :sibling_description
      t.text :surgical_history
      t.text :medical_history
      t.boolean :allergies
      t.text :allergy_description

      t.timestamps
    end
  end
end
