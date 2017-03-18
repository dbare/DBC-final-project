class RenameCandidatesToUsers < ActiveRecord::Migration[5.0]
  def change
  	rename_table :candidates, :users
  end
end
