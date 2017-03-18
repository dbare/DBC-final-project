class RenameCandidateIdToUserIdForLinksAndProfiles < ActiveRecord::Migration[5.0]
  def change
  	rename_column :profiles, :candidate_id, :user_id
  	rename_column :links, :candidate_id, :user_id
  end
end
