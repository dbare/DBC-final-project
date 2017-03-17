class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.text :description
      t.string :location
      t.string :compensation
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end

