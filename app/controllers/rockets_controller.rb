class RocketsController < ApplicationController
  before_action :get_rocket, only: [:show, :update]

  # POST   /rockets	{"rocket_family_id :"1",	"name" : "Alpha2"}
  def create
    rocket_family = RocketFamily.find_by_id(params[:rocket_family_id])
    if rocket_family.present?
      rocket = Rocket.new(rocket_params)
      if rocket.valid?
        rocket.save
        render json: {status: 200, success: true, message: "Created Successfully"}
      else
        render json: {status: 422, success: false, message: rocket.errors.messages}
      end
    else
      render json: {status: 404 , success: false, message: "Rocket family not found."}
    end
  end

  # GET    /rockets
  def index
    if params[:rocket_family_id].present?
      render json: {status:200, success: true, rockets: Rocket.where(rocket_family_id: params[:rocket_family_id])  }
    else
      render json: {status:200, success: true, rockets: Rocket.all  }
    end
  end

  # GET    /rockets/:id
  def show
    render json: @rocket
  end

  # PUT /rockets/:id 	{"rocket_family_id": "2",	"name" : "Alpha3"}
  def update
    if @rocket.update_attributes(rocket_params)
      render json: {status: 200, success: true, message: "Updated Successfully"}
    else
      render json: {status: 422, success: false, message: @rocket.errors.messages}
    end
  end


  private
    def rocket_params
      params.permit(:name, :rocket_family_id)
    end

    def get_rocket
      @rocket = Rocket.find(params[:id])
    end
end
