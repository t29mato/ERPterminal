class RenameCategoryColumnToSystems < ActiveRecord::Migration[5.1]
  def change
    rename_column :systems, :category, :business_type
  end
end
