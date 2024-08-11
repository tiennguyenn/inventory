class SmartphonesController < ApplicationController
  before_action :set_smartphone, only: %i[ show edit update destroy ]

  # GET /smartphones or /smartphones.json
  def index
    @smartphones = Smartphone.all
  end

  # GET /smartphones/1 or /smartphones/1.json
  def show
  end

  # GET /smartphones/new
  def new
    @smartphone = Smartphone.new
  end

  # GET /smartphones/1/edit
  def edit
  end

  # POST /smartphones or /smartphones.json
  def create
    @smartphone = Smartphone.new(smartphone_params)

    respond_to do |format|
      if @smartphone.save
        format.html { redirect_to smartphone_url(@smartphone), notice: "Smartphone was successfully created." }
        format.json { render :show, status: :created, location: @smartphone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @smartphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smartphones/1 or /smartphones/1.json
  def update
    respond_to do |format|
      if @smartphone.update(smartphone_params)
        format.html { redirect_to smartphone_url(@smartphone), notice: "Smartphone was successfully updated." }
        format.json { render :show, status: :ok, location: @smartphone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @smartphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smartphones/1 or /smartphones/1.json
  def destroy
    @smartphone.destroy!

    respond_to do |format|
      format.html { redirect_to smartphones_url, notice: "Smartphone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smartphone
      @smartphone = Smartphone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def smartphone_params
      params.require(:smartphone).permit(:manufacturer_id, :model_id, :data_memory, :year_of_manufacture, :os_version, :body_color, :price)
    end
end
