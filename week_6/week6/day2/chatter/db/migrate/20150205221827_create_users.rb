class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile_name
      t.string :location
      t.string :photo_url
      t.text :bio

      t.timestamps null: false
    end
  end
end
