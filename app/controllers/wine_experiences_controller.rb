class WineExperiencesController < ApplicationController
  before_action :set_wine_experience, only: %i[ show edit update destroy ]

  def index
    @wine_experiences = current_user.wine_experiences.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @wine_experience = WineExperience.new
    @wine_vintages = WineVintage.all
  end

  # GET /wine_experiences/1/edit
  def edit
  end

  # POST /wine_experiences or /wine_experiences.json
  def create
    @wine_experience = current_user.wine_experiences.build(wine_experience_params)
    @wine_vintages = WineVintage.all

    respond_to do |format|
      if @wine_experience.save
        format.html { redirect_to wine_experience_url(@wine_experience), notice: "Wine experience was successfully created." }
        format.json { render :show, status: :created, location: @wine_experience }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wine_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wine_experiences/1 or /wine_experiences/1.json
  def update
    respond_to do |format|
      if @wine_experience.update(wine_experience_params)
        format.html { redirect_to wine_experience_url(@wine_experience), notice: "Wine experience was successfully updated." }
        format.json { render :show, status: :ok, location: @wine_experience }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wine_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wine_experiences/1 or /wine_experiences/1.json
  def destroy
    @wine_experience.destroy

    respond_to do |format|
      format.html { redirect_to wine_experiences_url, notice: "Wine experience was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_wine_experience
    @wine_experience = current_user.wine_experiences.find(params[:id])
    @wine_vintages = WineVintage.all
  end

  # Only allow a list of trusted parameters through.
  def wine_experience_params
    params.require(:wine_experience).permit(:tasted_on, :location, :notes, :price, :rating, :user_id, :wine_vintage_id)
  end
end
