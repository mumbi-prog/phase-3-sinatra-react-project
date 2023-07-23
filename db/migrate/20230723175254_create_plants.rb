class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name, null: false
      t.string :species, null: false
      t.string :image_url, null: false

      t.timestamps
    end
  end
end
