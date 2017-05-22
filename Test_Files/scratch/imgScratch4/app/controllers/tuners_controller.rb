class TunersController < ApplicationController
  before_action :set_tuner, only: [:show, :edit, :update, :destroy]

  # GET /tuners
  # GET /tuners.json
  def index
    @tuners = Tuner.all
  end

  # GET /tuners/1
  # GET /tuners/1.json
  def show
  end

  # GET /tuners/new
  def new
    @tuner = Tuner.new
  end

  # GET /tuners/1/edit
  def edit
  end

  # POST /tuners
  # POST /tuners.json
  def create
    @tuner = Tuner.new(tuner_params)

    respond_to do |format|
      if @tuner.save
        format.html { redirect_to @tuner, notice: 'Tuner was successfully created.' }
        format.json { render :show, status: :created, location: @tuner }
      else
        format.html { render :new }
        format.json { render json: @tuner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuners/1
  # PATCH/PUT /tuners/1.json
  def update
    respond_to do |format|
      if @tuner.update(tuner_params)
        format.html { redirect_to @tuner, notice: 'Tuner was successfully updated.' }
        format.json { render :show, status: :ok, location: @tuner }
      else
        format.html { render :edit }
        format.json { render json: @tuner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuners/1
  # DELETE /tuners/1.json
  def destroy
    @tuner.destroy
    respond_to do |format|
      format.html { redirect_to tuners_url, notice: 'Tuner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuner
      @tuner = Tuner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tuner_params
      params.require(:tuner).permit(:tunerName, :mp3_one, :mp3_two, :mp3_three, :mp3_four, :mp3_five, :mp3_six)
    end
end
