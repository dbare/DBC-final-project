class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :location
      t.text :objective
      t.text :summary
      t.references :candidate, foreign_key: true

      t.timestamps
    end
  end
end
