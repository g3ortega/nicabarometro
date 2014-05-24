namespace :capturedata do

  #TODO: Terminar captura de datos

  desc "Capture all the data for development environment"
  task all: :environment do
    puts "Getting current weather and forecast data..."
      departments = Department.all
      departments.each do |department|
        puts "Getting data for #{department.name}"
        barometer = Barometer.new(department.query)
        w = barometer.measure.current
        Weather.create(condition: w.condition, dew_point: w.dew_point.to_f, heat_index: w.heat_index.to_f, humidity: w.humidity.to_f, icon: w.icon, pressure: w.pressure.to_f, temperature: w.temperature.to_f, department: department, stale_at: w.stale_at, visibility: w.visibility.to_f  )

        Forecast.delete_all
        forecasts = barometer.measure.forecast
        forecasts.each do |f|
          Forecast.create(condition: f.condition, ends_at: f.ends_at.to_datetime, high: f.high.to_f, low: f.low.to_f, icon: f.icon, pop: f.pop.to_f, sun_rise: f.sun.rise, sun_set: f.sun.set, department: department  )
        end

      end

    end

  end


