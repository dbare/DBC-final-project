class ChangeTokenAdminTokenToAdminStatus < ActiveRecord::Migration[5.0]
  def change
  	rename_column :tokens, :admin_token, :admin_status
  end
end
