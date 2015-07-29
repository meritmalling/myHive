class FixColumnType < ActiveRecord::Migration
  def change
    change_table :inspections do |t|
    t.remove :remove_super
    t.remove :weather_wind_direction
    t.remove :weather_wind_speed
    t.remove :weather_temp
    t.decimal :wind_speed
    t.decimal :temp
  end
end
end