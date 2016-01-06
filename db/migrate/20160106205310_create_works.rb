class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :thumbnail

      t.timestamps null: false
    end
  end
end
