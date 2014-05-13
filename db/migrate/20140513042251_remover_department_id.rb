class RemoverDepartmentId < ActiveRecord::Migration
  def change
    remove_column :departments, :departments_id
  end
end
