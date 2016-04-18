class IndexController < ApplicationController
  def index
    @plans = Plan.all.to_json(include: :options)
  end
end
