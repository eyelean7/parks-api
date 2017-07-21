class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.column :park_name, :string
      t.column :location, :string
      t.timestamps
    end
  end
end
