class ChangeCandidateIdToUserIdForContracts < ActiveRecord::Migration[5.0]
  def change
  	rename_column :contracts, :candidate_id, :user_id
  end
end
