class WineriesController < ApplicationController
  before_action :set_winery, only: %i[show edit update destroy]
  before_action :check_location_presence, only: %i[new]

  # GET /wineries or /wineries.json
  def index
    @wineries = Winery.all
  end

  # GET /wineries/1 or /wineries/1.json
  def show; end

  # GET /wineries/new
  def new
    @winery = Winery.new
    @locations = Location.includes(:country).all
  end

  # GET /wineries/1/edit
  def edit; end

  # POST /wineries or /wineries.json
  def create
    @winery = Winery.new(winery_params)
    @locations = Location.includes(:country).all

    respond_to do |format|
      if @winery.save
        format.html { redirect_to winery_url(@winery), notice: 'Winery was successfully created.' }
        format.json { render :show, status: :created, location: @winery }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @winery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wineries/1 or /wineries/1.json
  def update
    respond_to do |format|
      if @winery.update(winery_params)
        format.html { redirect_to winery_url(@winery), notice: 'Winery was successfully updated.' }
        format.json { render :show, status: :ok, location: @winery }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @winery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wineries/1 or /wineries/1.json
  def destroy
    @winery.destroy

    respond_to do |format|
      format.html { redirect_to wineries_url, notice: 'Winery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_winery
    @winery = Winery.find(params[:id])
    @locations = Location.includes(:country).all
  end

  # Only allow a list of trusted parameters through.
  def winery_params
    params.require(:winery).permit(:name, :location_id)
  end

  def check_location_presence
    redirect_to new_location_path(from: 'new_winery') if Location.count.zero?
  end
end
