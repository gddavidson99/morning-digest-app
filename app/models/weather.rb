require 'rest-client'

class Weather < ApplicationRecord

  def initialize(user_city)
    @CITY = user_city
  end

  def get_data
    return JSON.parse(RestClient.get(get_url))
  end

  def get_city_id(city)
    return "5172387"
  end

  def get_url
    api_key = 'a87fc55118a2fdab54c68183a5a22906'
    return "http://api.openweathermap.org/data/2.5/weather?id=#{get_city_id(@CITY)}&APPID=#{api_key}"
  end

end
