class CreateForecasts < ActiveRecord::Migration
  def change
    create_table :forecasts do |t|
      t.string :condition
      t.datetime :ends_at
      t.float :high
      t.float :low
      t.string :icon
      t.float :pop
      t.datetime :starts_at
      t.time :sun_rise
      t.time :sun_set
      t.timestamps
    end
  end
end
