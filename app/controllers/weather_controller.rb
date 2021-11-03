class WeatherController < ApplicationController
  def index
    response = HTTP.get("http://api.airvisual.com/v2/countries?key=#{Rails.application.credentials.api_key}")
    render json: response.parse(:json)
  end 
end
