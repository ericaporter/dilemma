class Vote < ActiveRecord::Base
  belongs_to :solution
  belongs_to :user
end
