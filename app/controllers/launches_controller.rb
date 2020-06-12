class LaunchesController < ApplicationController
  before_action :get_launch, only: [:show, :update]

  # POST   /launches	{"rocket__id :"1",	"name" : "Launch 1"}
  def create
    rocket = Rocket.find_by_id(params[:rocket_id])
    if rocket.present?
      launch = Launch.new(launch_params)
      if launch.valid?
        launch.save
        render json: {status: 200, success: true, message: "Created Successfully"}
      else
        render json: {status: 422, success: false, message: launch.errors.messages}
      end
    else
      render json: {status: 404 , success: false, message: "Rocket not found."}
    end
  end

  # GET    /launches
  def index
    if params[:rocket_id].present?
      render json: {status:200, success: true, launches: Launch.where(rocket_id: params[:rocket_id])  }
    else
      render json: {status:200, success: true, launches: Launch.all  }
    end
  end

  # GET    /launches/:id
  def show
    render json: @launch
  end

  # PUT /launches/:id 	{"rocket_id": "2",	"name" : "launch 2"}
  def update
    if @launch.update_attributes(launch_params)
      render json: {status: 200, success: true, message: "Updated Successfully"}
    else
      render json: {status: 422, success: false, message: @launch.errors.messages}
    end
  end


  private
    def launch_params
      params.permit(:name, :rocket_id)
    end

    def get_launch
      @launch = Launch.find(params[:id])
    end
end
