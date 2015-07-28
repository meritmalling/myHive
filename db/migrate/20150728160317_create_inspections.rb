class CreateInspections < ActiveRecord::Migration
  def change
    create_table :inspections do |t|
      t.string :temperment
      t.string :laying_pattern
      t.string :uncapped_brood
      t.string :capped_brood
      t.string :population
      t.string :drone_population
      t.string :drone_cells
      t.string :honey
      t.string :nectar
      t.string :pollen
      t.string :syrup
      t.string :pollen_sub
      t.string :medicine
      t.integer :add_super
      t.integer :remove_super
      t.boolean :re_queen
      t.boolean :queen
      t.boolean :eggs
      t.boolean :queen_cells
      t.string :notes
      t.references :hive, index: true, foreign_key: true
      t.date :inspection_date
      t.string :weather_main
      t.integer :weather_temp
      t.integer :weather_wind_speed
      t.integer :weather_wind_direction

      t.timestamps null: false
    end
  end
end
