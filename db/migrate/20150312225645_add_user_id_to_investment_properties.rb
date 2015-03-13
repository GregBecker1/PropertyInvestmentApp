class AddUserIdToInvestmentProperties < ActiveRecord::Migration
  def change
    change_table :investment_properties do |t|
      t.references :user
    end
  end
end
