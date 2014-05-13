class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.string :condition
      t.float :dew_point
      t.float :heat_index
      t.float :humidity
      t.string :icon
      # t.datetime :observed_at
      t.float :pressure
      t.datetime :stale_at
      t.float :temperature
      t.float :visibility
      t.float :wind
      t.timestamps
    end
  end
end
