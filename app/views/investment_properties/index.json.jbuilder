json.array!(@investment_properties) do |investment_property|
  json.extract! investment_property, :id, :mlsNum, :analysisDate, :listedDate, :soldDate, :address, :listPrice, :downPayment, :totGrossInc, :vacCrdtAllow, :goi, :totOpExp, :noi, :deprec, :cashOnCashRet, :principleRed, :apprec, :totROI, :retOnEquity, :grm, :capRate, :debtCoverRatio
  json.url investment_property_url(investment_property, format: :json)
end
