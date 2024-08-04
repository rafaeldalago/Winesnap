class WineVintagesController < ApplicationController
  before_action :set_wine_vintage, only: %i[ show edit update destroy ]

  # GET /wine_vintages or /wine_vintages.json
  def index
    @wine_vintages = WineVintage.all
  end

  # GET /wine_vintages/1 or /wine_vintages/1.json
  def show
  end

  # GET /wine_vintages/new
  def new
    @wine_vintage = WineVintage.new
    @wines = Wine.order(name: :asc).all
  end

  # GET /wine_vintages/1/edit
  def edit
  end

  # POST /wine_vintages or /wine_vintages.json
  def create
    @wine_vintage = WineVintage.new(wine_vintage_params)
    @wines = Wine.order(name: :asc).all

    respond_to do |format|
      if @wine_vintage.save
        format.html { redirect_to wine_vintage_url(@wine_vintage), notice: "Wine vintage was successfully created." }
        format.json { render :show, status: :created, location: @wine_vintage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wine_vintage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wine_vintages/1 or /wine_vintages/1.json
  def update
    respond_to do |format|
      if @wine_vintage.update(wine_vintage_params)
        format.html { redirect_to wine_vintage_url(@wine_vintage), notice: "Wine vintage was successfully updated." }
        format.json { render :show, status: :ok, location: @wine_vintage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wine_vintage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wine_vintages/1 or /wine_vintages/1.json
  def destroy
    @wine_vintage.destroy

    respond_to do |format|
      format.html { redirect_to wine_vintages_url, notice: "Wine vintage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_wine_vintage
    @wine_vintage = WineVintage.find(params[:id])
    @wines = Wine.order(name: :asc).all
  end

  # Only allow a list of trusted parameters through.
  def wine_vintage_params
    params.require(:wine_vintage).permit(:alcohol, :vintage, :wine_id)
  end
end
