class DronesController < ApplicationController
  #before_action :set_drone, only: [:show]
  before_action :set_station, only: [:new]

  def index
    @drones = Drone.all
  end

  def show
  end

  def new
    @drone = Drone.new
    @drone.imgs.build
  end

  def create
    @drone = Drone.new(drone_params)
    maker = Maker.new

    if @drone.save
      redirect_to root_path
    else
      flash.now[:alert] = "登録に失敗しました"
    end
  end

  private
  def set_station
    @station_parent_array = Station.where(ancestry: nil)
  end

  def set_drone
    #@drone = Drone.find(params[:id])
  end

  def drone_params
    params.require(:drone).permit(
    :name, 
    :introduction, 
    :price, 
    :area, 
    :maker_id, 
    :station_id, 
    :size_id, 
    :weight_id, 
    :load_id, 
    :space_id, 
    imgs_attributes: [:src, :_destroy, :id]
    ).merge(owner_id: current_user.id, status: 0)
  end
end
