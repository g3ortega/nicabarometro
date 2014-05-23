class EditUserRole < ActiveRecord::Migration
  def change
    change_column :users, :role, :boolean
  end
end
