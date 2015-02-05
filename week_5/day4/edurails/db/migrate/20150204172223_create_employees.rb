class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.belongs_to :company
      t.string :name
      t.string :job_title

      t.timestamps null: false
    end
  end
end
