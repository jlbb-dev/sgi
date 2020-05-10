class ServiceModesController < ApplicationController
  before_action :set_service_mode, only: [:show, :edit, :update, :destroy]

  # GET /service_modes
  # GET /service_modes.json
  def index
    @service_modes = ServiceMode.all
  end

  # GET /service_modes/1
  # GET /service_modes/1.json
  def show
  end

  # GET /service_modes/new
  def new
    @service_mode = ServiceMode.new
  end

  # GET /service_modes/1/edit
  def edit
  end

  # POST /service_modes
  # POST /service_modes.json
  def create
    @service_mode = ServiceMode.new(service_mode_params)

    respond_to do |format|
      if @service_mode.save
        format.html { redirect_to @service_mode, notice: 'Service mode was successfully created.' }
        format.json { render :show, status: :created, location: @service_mode }
      else
        format.html { render :new }
        format.json { render json: @service_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_modes/1
  # PATCH/PUT /service_modes/1.json
  def update
    respond_to do |format|
      if @service_mode.update(service_mode_params)
        format.html { redirect_to @service_mode, notice: 'Service mode was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_mode }
      else
        format.html { render :edit }
        format.json { render json: @service_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_modes/1
  # DELETE /service_modes/1.json
  def destroy
    @service_mode.destroy
    respond_to do |format|
      format.html { redirect_to service_modes_url, notice: 'Service mode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_mode
      @service_mode = ServiceMode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_mode_params
      params.require(:service_mode).permit(:name)
    end
end
