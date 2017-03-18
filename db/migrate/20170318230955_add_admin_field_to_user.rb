class AddAdminFieldToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :admin_status, :boolean, default: false
  end
end
