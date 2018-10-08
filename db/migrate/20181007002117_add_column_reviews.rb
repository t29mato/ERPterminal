class AddColumnReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :working_period, :string
  end
end
