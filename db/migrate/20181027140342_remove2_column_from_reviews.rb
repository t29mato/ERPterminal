class Remove2ColumnFromReviews < ActiveRecord::Migration[5.1]
  def up
    remove_column :reviews, :vendor_id
    remove_column :reviews, :system_id
      end

  def down
    add_column :reviews, :vendor_id, :integer
    add_column :reviews, :system_id, :integer
  end
end
