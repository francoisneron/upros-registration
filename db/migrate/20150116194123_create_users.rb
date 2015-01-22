class CreateUsers < ActiveRecord::Migration
  def change
  	drop_table :users
    create_table :users do |t|
      t.string :emai
      t.string :status

      t.timestamps null: false
    end
  end
end
