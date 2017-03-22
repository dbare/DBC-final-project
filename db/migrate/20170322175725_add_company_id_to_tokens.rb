class AddCompanyIdToTokens < ActiveRecord::Migration[5.0]
  def change
  	add_column :tokens, :company_id, :integer
  end
end
