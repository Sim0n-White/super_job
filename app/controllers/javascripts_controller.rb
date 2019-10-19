class JavascriptsController < ApplicationController
  def dynamic_cities
    @cities = City.all
  end
end
