class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :birthday
      t.integer :gender
      t.integer :height
      t.integer :weight

      t.timestamps null: false
    end
  end
end
