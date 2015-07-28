class Inspection < ActiveRecord::Base
  belongs_to :hive
  has_and_belongs_to_many :pests
end
