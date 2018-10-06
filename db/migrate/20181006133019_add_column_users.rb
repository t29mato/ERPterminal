class AddColumnUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :industry_type, :string
    add_column :users, :section, :string
    add_column :users, :company, :string
    add_column :users, :working_period, :string
  end
end
