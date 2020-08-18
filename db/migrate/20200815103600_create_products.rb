class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :headline
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
