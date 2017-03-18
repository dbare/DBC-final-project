class RenameCandidateIdToUserIdForTokens < ActiveRecord::Migration[5.0]
  def change
  	rename_column :tokens, :candidate_id, :user_id
  end
end
