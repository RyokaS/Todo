class CreateTask < ActiveRecord::Migration[5.1]
  def change
    create_table :task do |t|
      t.text :content
      t.text :create
      t.text :charge
      t.text :status
      t.integer :limit

      t.timestamps
    end
  end
end
