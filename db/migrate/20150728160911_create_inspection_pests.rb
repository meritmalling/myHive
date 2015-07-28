class CreateInspectionPests < ActiveRecord::Migration
  def change
    create_table :inspection_pests do |t|
      t.references :inspection, index: true, foreign_key: true
      t.references :pest, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
