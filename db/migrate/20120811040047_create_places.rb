class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name, :null => false, :unique => true
      t.string :address, :null => false
      t.text :description
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
