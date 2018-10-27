class RenameToUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :industry_type, :industry_type_id
    rename_column :users, :section, :section_id
  end
end
