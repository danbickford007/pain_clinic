class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_initial
      t.string :email
      t.string :gender
      t.decimal :height
      t.integer :weight
      t.integer :ssn
      t.date :dob
      t.string :marital_status

      t.timestamps
    end
  end
end
