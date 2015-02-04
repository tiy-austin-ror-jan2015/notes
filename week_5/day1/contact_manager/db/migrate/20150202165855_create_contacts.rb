class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name, null: false
      t.string :last_name,  null: false
      t.string :email,      null: false

      t.integer :age, default: 0
      
      t.string :phone_number
      t.string :twitter
      t.string :github

      t.timestamps null: false
    end
  end
end
