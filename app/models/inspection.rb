class Inspection < ActiveRecord::Base
  belongs_to :hives
  # has_and_belongs_to_many :pests
end
