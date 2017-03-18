class RenameCandidateIdToUserIdForResumes < ActiveRecord::Migration[5.0]
  def change
  	rename_column :resumes, :candidate_id, :user_id
  end
end
