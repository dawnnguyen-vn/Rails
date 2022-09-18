class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :priority
      t.string :time
      t.boolean :completed, :default => false
      t.timestamps
    end
  end
end
