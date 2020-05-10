class TecnicsController < ApplicationController
  before_action :set_tecnic, only: [:show, :edit, :update, :destroy]

  # GET /tecnics
  # GET /tecnics.json
  def index
    @tecnics = Tecnic.all
  end

  # GET /tecnics/1
  # GET /tecnics/1.json
  def show
  end

  # GET /tecnics/new
  def new
    @tecnic = Tecnic.new
  end

  # GET /tecnics/1/edit
  def edit
  end

  # POST /tecnics
  # POST /tecnics.json
  def create
    @tecnic = Tecnic.new(tecnic_params)

    respond_to do |format|
      if @tecnic.save
        format.html { redirect_to @tecnic, notice: 'Tecnic was successfully created.' }
        format.json { render :show, status: :created, location: @tecnic }
      else
        format.html { render :new }
        format.json { render json: @tecnic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tecnics/1
  # PATCH/PUT /tecnics/1.json
  def update
    respond_to do |format|
      if @tecnic.update(tecnic_params)
        format.html { redirect_to @tecnic, notice: 'Tecnic was successfully updated.' }
        format.json { render :show, status: :ok, location: @tecnic }
      else
        format.html { render :edit }
        format.json { render json: @tecnic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tecnics/1
  # DELETE /tecnics/1.json
  def destroy
    @tecnic.destroy
    respond_to do |format|
      format.html { redirect_to tecnics_url, notice: 'Tecnic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tecnic
      @tecnic = Tecnic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tecnic_params
      params.require(:tecnic).permit(:name)
    end
end
