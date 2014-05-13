class Department < ActiveRecord::Base
  has_many :weathers
  has_many :forecasts
end
