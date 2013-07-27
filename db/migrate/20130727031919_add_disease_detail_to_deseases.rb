class AddDiseaseDetailToDeseases < ActiveRecord::Migration
  def change
    add_column :diseases, :disease_detail, :string

  end
end
