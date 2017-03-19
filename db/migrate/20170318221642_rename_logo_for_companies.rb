class RenameLogoForCompanies < ActiveRecord::Migration[5.0]
  def change
  	rename_column :companies, :logo, :photo

  end
end
