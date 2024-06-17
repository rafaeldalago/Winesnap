class ExperiencesController < ApplicationController
  before_action :set_experience, only: %i[show edit update destroy]
  before_action :check_wine_vintage_presence, only: %i[new]

  # GET /experiences or /experiences.json
  def index
    @experiences = current_user.experiences.all.order(created_at: :desc)
  end

  # GET /experiences/1 or /experiences/1.json
  def show; end

  # GET /experiences/new
  def new
    @experience = Experience.new
    @wine_vintages = WineVintage.all
  end

  # GET /experiences/1/edit
  def edit
    @wine_vintages = WineVintage.all
  end

  # POST /experiences or /experiences.json
  def create
    @experience = current_user.experiences.build(experience_params)
    @wine_vintages = WineVintage.all

    respond_to do |format|
      if @experience.save
        format.html { redirect_to experience_url(@experience), notice: 'Experience was successfully created.' }
        format.json { render :show, status: :created, location: @experience }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experiences/1 or /experiences/1.json
  def update
    respond_to do |format|
      if @experience.update(experience_params)
        format.html { redirect_to experience_url(@experience), notice: 'Experience was successfully updated.' }
        format.json { render :show, status: :ok, location: @experience }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiences/1 or /experiences/1.json
  def destroy
    @experience.destroy

    respond_to do |format|
      format.html { redirect_to experiences_url, notice: 'Experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_experience
    @experience = current_user.experiences.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def experience_params
    params.require(:experience).permit(:user_id, :wine_vintage_id, :notes, :rating, :price, :location, :tasted_on)
  end

  def check_wine_vintage_presence
    redirect_to new_wine_vintage_path(from: 'new_experience') if WineVintage.count.zero?
  end
end
