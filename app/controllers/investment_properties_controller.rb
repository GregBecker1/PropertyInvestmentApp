class InvestmentPropertiesController < ApplicationController
  before_action :set_investment_property, only: [:show, :edit, :update, :destroy]

  # GET /investment_properties
  # GET /investment_properties.json
  def index
    @investment_properties = InvestmentProperty.all
  end

  # GET /investment_properties/1
  # GET /investment_properties/1.json
  def show
  end

  # GET /investment_properties/new
  def new
    @investment_property = InvestmentProperty.new
  end

  # GET /investment_properties/1/edit
  def edit
  end

  # POST /investment_properties
  # POST /investment_properties.json
  def create
    @investment_property = InvestmentProperty.new(investment_property_params)

    respond_to do |format|
      if @investment_property.save
        format.html { redirect_to @investment_property, notice: 'Investment property was successfully created.' }
        format.json { render :show, status: :created, location: @investment_property }
      else
        format.html { render :new }
        format.json { render json: @investment_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investment_properties/1
  # PATCH/PUT /investment_properties/1.json
  def update
    respond_to do |format|
      if @investment_property.update(investment_property_params)
        format.html { redirect_to @investment_property, notice: 'Investment property was successfully updated.' }
        format.json { render :show, status: :ok, location: @investment_property }
      else
        format.html { render :edit }
        format.json { render json: @investment_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investment_properties/1
  # DELETE /investment_properties/1.json
  def destroy
    @investment_property.destroy
    respond_to do |format|
      format.html { redirect_to investment_properties_url, notice: 'Investment property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investment_property
      @investment_property = InvestmentProperty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def investment_property_params
      params.require(:investment_property).permit(:mlsNum, :user_id, :analysisDate, :listedDate, :soldDate, :address, :listPrice, :downPayment, :totGrossInc, :vacCrdtAllow, :goi, :totOpExp, :noi, :deprec, :cashOnCashRet, :principleRed, :apprec, :totROI, :retOnEquity, :grm, :capRate, :debtCoverRatio)
    end
end
