class CreateSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :systems do |t|
      t.string :name
      t.integer :vendor_id
      t.string :category

      t.timestamps
    end
  end
end
