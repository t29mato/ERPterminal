class ChangeTableToSystem < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :vendor_system_id, :integer
    add_column :reviews, :business_type_id, :integer
  end
end
