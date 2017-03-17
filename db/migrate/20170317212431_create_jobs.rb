class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :position
      t.string :location
      t.text :description
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
