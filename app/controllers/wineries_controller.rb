class WineriesController < ApplicationController
  before_action :set_winery, only: %i[ show edit update destroy ]

  # GET /wineries or /wineries.json
  def index
    @wineries = Winery.all
  end

  # GET /wineries/1 or /wineries/1.json
  def show
  end

  # GET /wineries/new
  def new
    @winery = Winery.new
    @countries = Country.all.order(name: :asc)
  end

  # GET /wineries/1/edit
  def edit
  end

  # POST /wineries or /wineries.json
  def create
    @winery = Winery.new(winery_params)
    @countries = Country.all.order(name: :asc)

    respond_to do |format|
      if @winery.save
        format.html { redirect_to winery_url(@winery), notice: "Winery was successfully created." }
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
        format.html { redirect_to winery_url(@winery), notice: "Winery was successfully updated." }
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
      format.html { redirect_to wineries_url, notice: "Winery was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_winery
    @winery = Winery.includes(:country).find(params[:id])
    @countries = Country.all.order(name: :asc)
  end

  # Only allow a list of trusted parameters through.
  def winery_params
    params.require(:winery).permit(:name, :location, :country_id)
  end
end
