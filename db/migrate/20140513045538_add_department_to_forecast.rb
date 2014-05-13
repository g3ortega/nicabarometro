class AddDepartmentToForecast < ActiveRecord::Migration
  def change
    add_belongs_to :forecasts, :department
  end
end
