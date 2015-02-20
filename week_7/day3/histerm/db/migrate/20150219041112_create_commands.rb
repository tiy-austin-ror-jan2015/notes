class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.string :name
      t.text :desc
      t.belongs_to :session, index: true

      t.timestamps null: false
    end
    add_foreign_key :commands, :sessions
  end
end
