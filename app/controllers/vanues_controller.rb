class VanuesController < ApplicationController
  before_action :set_vanue, only: %i[ show edit update destroy ]

  # GET /vanues or /vanues.json
  def index
    @vanues = Vanue.all
  end

  # GET /vanues/1 or /vanues/1.json
  def show
  end

  # GET /vanues/new
  def new
    @vanue = Vanue.new
  end

  # GET /vanues/1/edit
  def edit
  end

  # POST /vanues or /vanues.json
  def create
    @vanue = Vanue.new(vanue_params)

    respond_to do |format|
      if @vanue.save
        format.html { redirect_to vanue_url(@vanue), notice: "Vanue was successfully created." }
        format.json { render :show, status: :created, location: @vanue }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vanue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vanues/1 or /vanues/1.json
  def update
    respond_to do |format|
      if @vanue.update(vanue_params)
        format.html { redirect_to vanue_url(@vanue), notice: "Vanue was successfully updated." }
        format.json { render :show, status: :ok, location: @vanue }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vanue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vanues/1 or /vanues/1.json
  def destroy
    @vanue.destroy

    respond_to do |format|
      format.html { redirect_to vanues_url, notice: "Vanue was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vanue
      @vanue = Vanue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vanue_params
      params.require(:vanue).permit(:name, :description, :rows, :seats_per_row)
    end
end
