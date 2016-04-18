class Plan < ActiveRecord::Base
  has_many :plan_options
  has_many :options, through: :plan_options
end
