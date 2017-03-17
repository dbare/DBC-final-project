class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.string :email
      t.string :logo
      t.string :password_digest

      t.timestamps
    end
  end
end