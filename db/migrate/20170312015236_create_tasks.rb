class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :done
      t.belongs_to :todo_list, foreign_key: true

      t.timestamps
    end
  end
end
