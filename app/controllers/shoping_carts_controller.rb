class ShopingCartsController < ApplicationController
  before_action :set_shoping_cart, only: %i[ show edit update destroy ]

  # GET /shoping_carts or /shoping_carts.json
  def index
    @shoping_carts = ShopingCart.all
  end

  # GET /shoping_carts/1 or /shoping_carts/1.json
  def show
  end

  # GET /shoping_carts/new
  def new
    @shoping_cart = ShopingCart.new
  end

  # GET /shoping_carts/1/edit
  def edit
  end

  # POST /shoping_carts or /shoping_carts.json
  def create
    @shoping_cart = ShopingCart.new(shoping_cart_params)

    respond_to do |format|
      if @shoping_cart.save
        format.html { redirect_to shoping_cart_url(@shoping_cart), notice: "Shoping cart was successfully created." }
        format.json { render :show, status: :created, location: @shoping_cart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shoping_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shoping_carts/1 or /shoping_carts/1.json
  def update
    respond_to do |format|
      if @shoping_cart.update(shoping_cart_params)
        format.html { redirect_to shoping_cart_url(@shoping_cart), notice: "Shoping cart was successfully updated." }
        format.json { render :show, status: :ok, location: @shoping_cart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shoping_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoping_carts/1 or /shoping_carts/1.json
  def destroy
    @shoping_cart.destroy

    respond_to do |format|
      format.html { redirect_to shoping_carts_url, notice: "Shoping cart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoping_cart
      @shoping_cart = ShopingCart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shoping_cart_params
      params.require(:shoping_cart).permit(:user_id)
    end
end
