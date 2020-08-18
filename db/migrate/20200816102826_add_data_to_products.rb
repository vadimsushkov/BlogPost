class AddDataToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :rooms, :integer
    add_column :products, :city, :string
    add_column :products, :days, :datetime, default: [].to_yaml
  end
end
