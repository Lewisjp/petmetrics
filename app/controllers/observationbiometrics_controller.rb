class ObservationbiometricsController < ApplicationController
  before_action :set_observationbiometric, only: [:show, :edit, :update, :destroy]

  # GET /observationbiometrics
  # GET /observationbiometrics.json
  def index
    @observationbiometrics = Observationbiometric.all
  end

  # GET /observationbiometrics/1
  # GET /observationbiometrics/1.json
  def show
  end

  # GET /observationbiometrics/new
  def new
    @observationbiometric = Observationbiometric.new
  end

  # GET /observationbiometrics/1/edit
  def edit
  end

  # POST /observationbiometrics
  # POST /observationbiometrics.json
  def create
    @observationbiometric = Observationbiometric.new(observationbiometric_params)

    respond_to do |format|
      if @observationbiometric.save
        format.html { redirect_to @observationbiometric, notice: 'Observationbiometric was successfully created.' }
        format.json { render :show, status: :created, location: @observationbiometric }
      else
        format.html { render :new }
        format.json { render json: @observationbiometric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /observationbiometrics/1
  # PATCH/PUT /observationbiometrics/1.json
  def update
    respond_to do |format|
      if @observationbiometric.update(observationbiometric_params)
        format.html { redirect_to @observationbiometric, notice: 'Observationbiometric was successfully updated.' }
        format.json { render :show, status: :ok, location: @observationbiometric }
      else
        format.html { render :edit }
        format.json { render json: @observationbiometric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observationbiometrics/1
  # DELETE /observationbiometrics/1.json
  def destroy
    @observationbiometric.destroy
    respond_to do |format|
      format.html { redirect_to observationbiometrics_url, notice: 'Observationbiometric was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observationbiometric
      @observationbiometric = Observationbiometric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def observationbiometric_params
      params.require(:observationbiometric).permit(:treatment_id, :Day0TempF, :Day1TempF, :Day2TempF, :Day3TempF, :Day4TempF, :Day5TempF, :Week0WhiteBlood, :Week1WhiteBlood, :Week2WhiteBlood, :Week3WhiteBlood, :Week4WhiteBlood, :Week5WhiteBlood, :Week6WhiteBlood, :Week7WhiteBlood, :Week8WhiteBlood, :Week9WhiteBlood, :Week10WhiteBlood, :Week11WhiteBlood, :Week12WhiteBlood, :Week0lymphocytes, :Week1lymphocytes, :Week2lymphocytes, :Week3lymphocytes, :Week4lymphocytes, :Week5lymphocytes, :Week6lymphocytes, :Week7lymphocytes, :Week8lymphocytes, :Week9lymphocytes, :Week10lymphocytes, :Week11lymphocytes, :Week12lymphocytes, :Week1PCV, :Week2PCV, :Week3PCV, :Week4PCV, :Week5PCV, :Week6PCV, :Week7PCV, :Week8PCV, :Week9PCV, :Week10PCV, :Week11PCV, :Week12PCV)
    end
end
