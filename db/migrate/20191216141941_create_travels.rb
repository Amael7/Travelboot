class CreateTravels < ActiveRecord::Migration[5.2]
  def change
    create_table :travels do |t|
      t.string :description
      t.string :destination
      t.integer :price
      t.string :photo

      t.timestamps
    end
  end
end
