class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :category_id
      t.integer :vendor_id
      t.integer :system_id
      t.integer :user_id
      t.float :score
      t.text :content

      t.timestamps
    end
  end
end
