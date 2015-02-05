class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.belongs_to :location
      t.string :title
      t.text :reqs
      t.integer :enrollment_cap

      t.timestamps null: false
    end
  end
end
