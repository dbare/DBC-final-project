class ChangeFileToContentOnResumes < ActiveRecord::Migration[5.0]
  def change
    rename_column :resumes, :file, :content
  end
end
