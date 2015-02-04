class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :body
      t.string :tags

      t.timestamps null: false
    end
  end
end
