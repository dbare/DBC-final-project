class AddAdminFieldToToken < ActiveRecord::Migration[5.0]
  def change
  	add_column :tokens, :admin_token, :boolean, default: false
  end
end
