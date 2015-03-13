class CreateInvestmentProperties < ActiveRecord::Migration
  def change
    create_table :investment_properties do |t|
      t.string :mlsNum
      t.date :analysisDate
      t.date :listedDate
      t.date :soldDate
      t.string :address
      t.float :listPrice
      t.float :downPayment
      t.float :totGrossInc
      t.float :vacCrdtAllow
      t.float :goi
      t.float :totOpExp
      t.float :noi
      t.float :deprec
      t.float :cashOnCashRet
      t.float :principleRed
      t.float :apprec
      t.float :totROI
      t.float :retOnEquity
      t.float :grm
      t.float :capRate
      t.float :debtCoverRatio

      t.timestamps null: false
    end
  end
end
