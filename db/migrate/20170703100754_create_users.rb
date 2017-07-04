class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :password
      t.text :mail

      t.timestamps
    end
  end
end
