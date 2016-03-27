class PlanAndOption < ActiveRecord::Base
  belongs_to :plan_id
  belongs_to :plan_option_id
end
