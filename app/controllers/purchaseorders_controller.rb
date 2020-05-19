class PurchaseordersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_purchaseorder, only: [:show, :edit, :update, :destroy]

  # GET /purchaseorders
  # GET /purchaseorders.json
  def index
    @purchaseorders = Purchaseorder.all
  end

  # GET /purchaseorders/1
  # GET /purchaseorders/1.json
  def show
  end

  # GET /purchaseorders/new
  def new
    @purchaseorder = Purchaseorder.new
  end

  # GET /purchaseorders/1/edit
  def edit
  end

  # POST /purchaseorders
  # POST /purchaseorders.json
  def create
    @purchaseorder = Purchaseorder.new(purchaseorder_params)

    respond_to do |format|
      if @purchaseorder.save
        format.html { redirect_to @purchaseorder, notice: 'Purchaseorder was successfully created.' }
        format.json { render :show, status: :created, location: @purchaseorder }
      else
        format.html { render :new }
        format.json { render json: @purchaseorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchaseorders/1
  # PATCH/PUT /purchaseorders/1.json
  def update
    respond_to do |format|
      if @purchaseorder.update(purchaseorder_params)
        format.html { redirect_to @purchaseorder, notice: 'Purchaseorder was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchaseorder }
      else
        format.html { render :edit }
        format.json { render json: @purchaseorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchaseorders/1
  # DELETE /purchaseorders/1.json
  def destroy
    @purchaseorder.destroy
    respond_to do |format|
      format.html { redirect_to purchaseorders_url, notice: 'Purchaseorder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchaseorder
      @purchaseorder = Purchaseorder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def purchaseorder_params
      params.require(:purchaseorder).permit(:orderno, :supplier, :description, :cost)
    end
end
