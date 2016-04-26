class IndexController < ApplicationController
  require "browser"

  def index
    if browser.chrome?
      redirect_to '/mobile'
    end
    @plans = Plan.all.to_json(include: :options)
  end
end
