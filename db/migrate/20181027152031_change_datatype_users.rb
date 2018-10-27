class ChangeDatatypeUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :industry_type, :integer
    change_column :users, :section, :integer
  end
end
