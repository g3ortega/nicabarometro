class WeathersController < ApplicationController


  def index
    @weather = Weather.last
    @forecasts = Forecast.all
  end



end
