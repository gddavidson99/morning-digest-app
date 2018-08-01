require 'rest-client'

class Weather < ApplicationRecord

  def initialize(data)
    @LATITUDE = data[:latitude]
    @LONGITUDE = data[:longitude]
  end

  def get_data
    return JSON.parse(RestClient.get(get_url))
  end

  def get_url
    api_key = 'a87fc55118a2fdab54c68183a5a22906'
    return "http://api.openweathermap.org/data/2.5/weather?lat=#{@LATITUDE}&lon=#{@LONGITUDE}&APPID=#{api_key}"
  end

end
