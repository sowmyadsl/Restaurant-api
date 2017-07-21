class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.column :name, :string
      t.column :address, :text
      t.column :hours, :integer
      t.column :phone_number, :integer

      t.timestamps
    end
  end
end
