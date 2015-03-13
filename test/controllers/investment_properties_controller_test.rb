require 'test_helper'

class InvestmentPropertiesControllerTest < ActionController::TestCase
  setup do
    @investment_property = investment_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:investment_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create investment_property" do
    assert_difference('InvestmentProperty.count') do
      post :create, investment_property: { address: @investment_property.address, analysisDate: @investment_property.analysisDate, apprec: @investment_property.apprec, capRate: @investment_property.capRate, cashOnCashRet: @investment_property.cashOnCashRet, debtCoverRatio: @investment_property.debtCoverRatio, deprec: @investment_property.deprec, downPayment: @investment_property.downPayment, goi: @investment_property.goi, grm: @investment_property.grm, listPrice: @investment_property.listPrice, listedDate: @investment_property.listedDate, mlsNum: @investment_property.mlsNum, noi: @investment_property.noi, principleRed: @investment_property.principleRed, retOnEquity: @investment_property.retOnEquity, soldDate: @investment_property.soldDate, totGrossInc: @investment_property.totGrossInc, totOpExp: @investment_property.totOpExp, totROI: @investment_property.totROI, vacCrdtAllow: @investment_property.vacCrdtAllow }
    end

    assert_redirected_to investment_property_path(assigns(:investment_property))
  end

  test "should show investment_property" do
    get :show, id: @investment_property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @investment_property
    assert_response :success
  end

  test "should update investment_property" do
    patch :update, id: @investment_property, investment_property: { address: @investment_property.address, analysisDate: @investment_property.analysisDate, apprec: @investment_property.apprec, capRate: @investment_property.capRate, cashOnCashRet: @investment_property.cashOnCashRet, debtCoverRatio: @investment_property.debtCoverRatio, deprec: @investment_property.deprec, downPayment: @investment_property.downPayment, goi: @investment_property.goi, grm: @investment_property.grm, listPrice: @investment_property.listPrice, listedDate: @investment_property.listedDate, mlsNum: @investment_property.mlsNum, noi: @investment_property.noi, principleRed: @investment_property.principleRed, retOnEquity: @investment_property.retOnEquity, soldDate: @investment_property.soldDate, totGrossInc: @investment_property.totGrossInc, totOpExp: @investment_property.totOpExp, totROI: @investment_property.totROI, vacCrdtAllow: @investment_property.vacCrdtAllow }
    assert_redirected_to investment_property_path(assigns(:investment_property))
  end

  test "should destroy investment_property" do
    assert_difference('InvestmentProperty.count', -1) do
      delete :destroy, id: @investment_property
    end

    assert_redirected_to investment_properties_path
  end
end
