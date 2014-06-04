class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.integer :user_id
      t.string :description

      t.timestamps
    end
  end
end
