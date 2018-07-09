class ChangeColumnDataTextToString < ActiveRecord::Migration[5.1]
  def change
    change_column :vendors, :name, :string
  end
end
