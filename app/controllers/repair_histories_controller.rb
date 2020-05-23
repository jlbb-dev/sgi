class RepairHistoriesController < ApplicationController
  before_action :set_repair_history, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!
  # GET /repair_histories
  # GET /repair_histories.json
  def index
    @repair_histories = RepairHistory.all
  end

  # GET /repair_histories/1
  # GET /repair_histories/1.json
  def show
  end

  # GET /repair_histories/new
  def new
    @repair_history = RepairHistory.new
  end

  # GET /repair_histories/1/edit
  def edit
  end

  # POST /repair_histories
  # POST /repair_histories.json
  def create
    @repair_history = RepairHistory.new(repair_history_params)

    respond_to do |format|
      if @repair_history.save
        format.html { redirect_to repair_histories_url, notice: 'Repair history was successfully created.' }
        format.json { render :show, status: :created, location: @repair_history }
      else
        format.html { render :new }
        format.json { render json: @repair_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repair_histories/1
  # PATCH/PUT /repair_histories/1.json
  def update
    respond_to do |format|
      if @repair_history.update(repair_history_params)
        format.html { redirect_to @repair_history, notice: 'Repair history was successfully updated.' }
        format.json { render :show, status: :ok, location: @repair_history }
      else
        format.html { render :edit }
        format.json { render json: @repair_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repair_histories/1
  # DELETE /repair_histories/1.json
  def destroy
    @repair_history.destroy
    respond_to do |format|
      format.html { redirect_to repair_histories_url, notice: 'Repair history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair_history
      @repair_history = RepairHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def repair_history_params
      params.require(:repair_history).permit(:date, :pccode, :observation,:tecnic_id, :service_area_id, :repair_type_id)
    end
end
