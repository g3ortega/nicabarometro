class ChangeColumnWeather < ActiveRecord::Migration
  def change
    change_column :weathers, :stale_at, :string
  end
end
