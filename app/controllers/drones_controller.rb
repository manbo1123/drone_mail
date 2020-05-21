class DronesController < ApplicationController
  before_action :set_drone
  before_action :set_station, only: [:new]

  def index
    @drones = Drone.all
  end

  def new
    @drone = Drone.new
  end

  private
  def set_station
    @station_parent_array = Station.where(ancestry: nil)
  end

  def set_drone
    #params.require(:drone).permit(
    #:name, :introduction, :price, :area)
  end
end
