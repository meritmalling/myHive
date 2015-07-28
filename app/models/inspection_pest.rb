class InspectionPest < ActiveRecord::Base
  belongs_to :inspection
  belongs_to :pest
end
