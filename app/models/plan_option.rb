class PlanOption < ActiveRecord::Base
  belongs_to :plan
  belongs_to :option
end
