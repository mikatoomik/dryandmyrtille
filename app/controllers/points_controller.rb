class PointsController < ApplicationController

  def index
    @points = Point.all

    @markers = @points.map do |point|
      {
        lat: point.latitude,
        lng: point.longitude
      }
    end
  end
end
