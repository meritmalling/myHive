class CreatePests < ActiveRecord::Migration
  def change
    create_table :pests do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
