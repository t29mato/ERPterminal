class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :mail_address
      t.string :password
      t.string :nickname

      t.timestamps
    end
  end
end
