class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :title, null: false
      t.text :body, default: ''
      t.integer :priority, default: 1
      t.belongs_to :user, null: false, index: true

      t.timestamps null: false
    end
  end
end
