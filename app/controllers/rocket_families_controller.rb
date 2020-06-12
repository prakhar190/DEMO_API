class RocketFamiliesController < ApplicationController

  before_action :get_rocket_family, only: [:show, :update]

  # POST   /rocket_families 	{"abbreviation" :"A2",	"name" : "Alpha2"}
  def create
    rocket_family = RocketFamily.new(rocket_family_params)
    if rocket_family.valid?
      rocket_family.save
      render json: {status: 200, success: true, message: "Created Successfully"}
    else
      render json: {status: 422, success: false, message: rocket_family.errors.messages}
    end
  end

  # GET    /rocket_families
  def index
    render json: {status:200, success: true, rocket_families: RocketFamily.all  }
  end

  # GET    /rocket_families/:id
  def show
    render json: @rocket_family
  end

  # PUT /rocket_families/:id 	{"abbreviation" :"A3",	"name" : "Alpha3"}
  def update
    if @rocket_family.update_attributes(rocket_family_params)
      render json: {status: 200, success: true, message: "Updated Successfully"}
    else
      render json: {status: 422, success: false, message: @rocket_family.errors.messages}
    end
  end


  private
    def rocket_family_params
      params.permit(:name, :abbreviation)
    end

    def get_rocket_family
      @rocket_family = RocketFamily.find(params[:id])
    end
end
