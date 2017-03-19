class RemovePassFromCompanies < ActiveRecord::Migration[5.0]
  def change
  	remove_column :companies, :password_digest, :string
  end
end
