class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :content
      t.text :charger
      t.text :creater
      t.datetime :limit
      t.text :status

      t.timestamps
    end

    # rename_column :tasks, :ceater, :creater
  end
end
