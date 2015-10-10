class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy, :finish_service]
  before_action :authenticate_user!
  respond_to :html,:json

  # GET /services
  # GET /services.json
  def index
    
      if (current_user.user_type == "C")
        @services = Service.where(user_customer_id: current_user.id) 
      else 
        if (current_user.user_type == "D")
          @services = Service.where(user_driver_id: current_user.id) 
        else
          @services = Service.all
        end
      end
  end

  # GET /services/1
  # GET /services/1.json
  def show
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(service_params)
    @service.state = "R"
    if (current_user.user_type == "C")
      @service.user_customer_id = current_user.id
    end

    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def finish
    codigo = params["format"]
    puts Service.find(codigo)
    @service = Service.find(codigo)
    @service.state = "F"
    @service.save
    if @service.update(service_params)
        format.html { redirect_to "/", notice: 'Service was finished.' }
    end
    
    redirect_to "/", notice: 'Service was finished.'
  end  
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
        @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:num_passenger, :car_type, :pay_method, :state, :feedback, :route_id, :user_customer_id, :user_driver_id)
    end
end
