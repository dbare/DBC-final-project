class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :type
      t.string :url
      t.text :description
      t.references :candidate, foreign_key: true

      t.timestamps
    end
  end
end