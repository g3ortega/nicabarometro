class AddDeparmentToWeather < ActiveRecord::Migration
  def change
    add_belongs_to :weathers, :department
  end
end
