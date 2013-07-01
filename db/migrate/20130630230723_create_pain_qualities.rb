class CreatePainQualities < ActiveRecord::Migration
  def change
    create_table :pain_qualities do |t|
      t.string :description
      t.integer :intake_id

      t.timestamps
    end
  end
end
