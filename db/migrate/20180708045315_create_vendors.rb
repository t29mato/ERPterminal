class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.text :name

      t.timestamps
    end
  end
end
