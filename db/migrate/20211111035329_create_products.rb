class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :image_url
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
