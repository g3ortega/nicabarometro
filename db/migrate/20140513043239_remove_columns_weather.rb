class RemoveColumnsWeather < ActiveRecord::Migration
  def change
    remove_column :weathers, :deparment_id
    remove_column :weathers, :departments_id
  end
end
