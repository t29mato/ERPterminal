class CreateVendorSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_systems do |t|
      t.references :vendor, foreign_key: true
      t.references :system, foreign_key: true
      t.timestamps
    end
  end
end
