class CreateIntakesPainQualities < ActiveRecord::Migration
  def change
    create_table :intakes_pain_qualities do |t|
      t.integer :intake_id
      t.integer :pain_quality_id

      t.timestamps
    end
  end
end
