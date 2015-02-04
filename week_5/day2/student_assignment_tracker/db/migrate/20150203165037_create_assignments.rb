class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.belongs_to :student, index: true
      t.string :title
      t.integer :grade
      t.boolean :completed
      t.boolean :late

      t.timestamps null: false
    end
  end
end
