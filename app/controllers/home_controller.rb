class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    experiences = Experience.count
    @metrics = {
      experiences: experiences,
      wines: WineVintage.count,
      liters: experiences * 0.75
    }
  end
end
