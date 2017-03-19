class CreateUploads < ActiveRecord::Migration[5.0]
  def change
    create_table :uploads do |t|
      t.string :photo
      t.string :title
      t.string :destination_url
      t.references :user

      t.timestamps
    end
  end
end
