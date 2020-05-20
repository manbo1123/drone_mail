class DronesController < ApplicationController

  def index
    #@drones = Drone.all
  end

  def new
    @drone = Drone.new
  end

end
