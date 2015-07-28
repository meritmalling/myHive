class AddInspectionToHive < ActiveRecord::Migration
  def change
    add_reference :hives, :inspection, index: true, foreign_key: true
  end
end
