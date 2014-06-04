class AddPatientidToIntakes < ActiveRecord::Migration
  def self.up
    add_column :intakes, :patient_id, :integer
  end

  def self.down
      remove_column :intakes, :patient_id
  end
end
