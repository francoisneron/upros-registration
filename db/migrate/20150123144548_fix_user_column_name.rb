class FixUserColumnName < ActiveRecord::Migration
  def change
  	rename_column :users, :emai, :email
  end
end
