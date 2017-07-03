class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.text :name
      t.text :mail
      t.text :password
      t.integer :age

      t.timestamps
    end
  end
end
