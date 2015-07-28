class Hive < ActiveRecord::Base
  belongs_to :user

  def hive_owner user
    user && user.id == self.user.id
  end
end
