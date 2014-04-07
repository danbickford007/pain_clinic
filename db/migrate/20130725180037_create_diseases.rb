class CreateDiseases < ActiveRecord::Migration
  def self.up 
    create_table :diseases do |t|
      t.string :alcohol_abuse
      t.string :allergies
      t.string :anemia
      t.string :arthritis
      t.string :asthma
      t.string :bladder_infection
      t.string :bleeding_tendency
      t.string :chicken_pox
      t.string :colitis
      t.string :gout
      t.string :hay_fever
      t.string :heart_attack
      t.string :hepatitis
      t.string :high_blood_pressure
      t.string :nervous_breakdown
      t.string :radiation_therapy
      t.string :rheumatic_fever
      t.string :sexually_transmitted_disease
      t.string :sickle_cell_anemia
      t.string :stomach_ulcers
      t.string :suicide_attempt
      t.string :patient_id

      t.timestamps
    end
  end

  def self.down
    drop_table :diseases do |t|
      t.string :alcohol_abuse
      t.string :allergies
      t.string :anemia
      t.string :arthritis
      t.string :asthma
      t.string :bladder_infection
      t.string :bleeding_tendency
      t.string :chicken_pox
      t.string :colitis
      t.string :gout
      t.string :hay_fever
      t.string :heart_attack
      t.string :hepatitis
      t.string :high_blood_pressure
      t.string :nervous_breakdown
      t.string :radiation_therapy
      t.string :rheumatic_fever
      t.string :sexually_transmitted_disease
      t.string :sickle_cell_anemia
      t.string :stomach_ulcers
      t.string :suicide_attempt
      t.string :patient_id

      t.timestamps
    end
  end

end
