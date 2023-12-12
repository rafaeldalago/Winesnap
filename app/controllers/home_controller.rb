class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    experiences = Experience.all.size
    @metrics = {
      experiences: experiences,
      wines: WineVintage.all.size,
      liters: experiences * 0.75
    }
  end
end
