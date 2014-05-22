class WeathersController < ApplicationController


  def index
    #Por el momento, el departamento de Managua aparecería por defecto en caso que no se seleccione otro departamento
    @weather = params[:weather] || Weather.where(department_id: 9).last
    @forecasts = Forecast.all
    @departments = Department.all
  end

  def history
    @weathers_last_week = Weather.where(:created_at => 1.week.ago...Time.now)
    @weathers_last_month = Weather.where(:created_at => 1.month.ago...Time.now)

  end



end
