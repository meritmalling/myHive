class CreateHives < ActiveRecord::Migration
  def change
    create_table :hives do |t|
      t.string :nickname
      t.date :creation_date
      t.string :creation_method
      t.string :breed
      t.string :type
      t.integer :supers
      t.text :notes
      t.integer :location
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
