class DigestController < ApplicationController

  def index
    @weather = Weather.new('Solon')
    @data = get_raw_weather_data
    @description = get_weather_description
    @temperature = get_temperature_in_farenheit
    @weather_message = get_temperature_message @temperature
  end

  private

  def get_raw_weather_data
    return @weather.get_data
  end

  def get_weather_description
    data = get_raw_weather_data
    return data["weather"][0]["description"]
  end

  def get_temperature_in_farenheit
    data = get_raw_weather_data
    temp_kelvin = data["main"]["temp"]
    temp_celcius = temp_kelvin - 273
    temp = (temp_celcius  * 1.8) + 32
    temp_f = temp.to_d.truncate(1).to_f
    return temp_f
  end

  def get_temperature_message(temp)
    result = ""

    if (temp >= 80)
      result = "Whew, it's gonna be a hot one today."
    elsif (temp >= 60)
      result = "Gonna be a nice day."
    elsif (temp >= 50)
      result = "It's a tad chilly."
    elsif (temp >= 30)
      result = "Gonna be cold, so you better wear a jacket."
    elsif (temp < 30)
      result = "I hope you're ready to freeze your butt off!"
    end
  end
end
