class CreateResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :resumes do |t|
      t.string :file
      t.references :candidate, foregin_key: true

      t.timestamps
    end
  end
end
