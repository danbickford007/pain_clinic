class CreateIntakes < ActiveRecord::Migration
  def change
    create_table :intakes do |t|
      t.string :complaint_1
      t.string :complaint_2
      t.string :complaint_3
      t.binary :illness_history
      t.integer :pain_now
      t.integer :least_pain_one_week
      t.integer :worst_pain_one_week
      t.integer :average_pain_last_week
      t.string :pain_duration
      t.string :pain_timing
      t.string :context_of_pain
      t.string :modifying_factors
      t.string :signs_and_sympotoms
      t.integer :general_activity
      t.integer :mood
      t.integer :normal_work
      t.integer :sleep
      t.integer :enjoyment
      t.integer :concentration
      t.integer :interaction_with_others
      t.string :current_pain_meds

      t.timestamps
    end
  end
end
