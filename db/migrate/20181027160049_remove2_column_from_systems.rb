class Remove2ColumnFromSystems < ActiveRecord::Migration[5.1]
  def up
    remove_column :systems, :vendor_id
    remove_column :systems, :business_type
  end

  def down
    add_column :systems, :vendor_id, :integer
    add_column :systems, :business_type, :string
  end
end
