class CreateCareTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :care_tasks do |t|
      t.string :name, null: false
      t.text :description
      t.date :due_date, null: false
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
