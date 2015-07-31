class Inspection < ActiveRecord::Base
  belongs_to :hives
  # has_and_belongs_to_many :pests

  validates :inspection_date, presence: true
end
