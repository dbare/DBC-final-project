class ChangeFileToAttachmentOnResumes < ActiveRecord::Migration[5.0]
  def change
  	rename_column :resumes, :file, :attachment
  end
end
