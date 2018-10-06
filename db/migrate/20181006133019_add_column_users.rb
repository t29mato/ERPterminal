class AddColumnUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :industry_type, :string
  end
end
