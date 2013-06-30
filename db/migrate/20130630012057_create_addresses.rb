class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :addr_one
      t.string :addr_two
      t.string :city
      t.string :state
      t.string :zip
      t.integer :patient_id

      t.timestamps
    end
  end
end
