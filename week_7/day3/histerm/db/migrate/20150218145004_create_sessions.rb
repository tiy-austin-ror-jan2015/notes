class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :title, null: false
      t.string :slug, null: false, index: true

      t.timestamps null: false
    end
  end
end
