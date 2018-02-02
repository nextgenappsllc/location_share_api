class CreateSharedLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :shared_locations do |t|
      t.string :token
      t.float :latitude
      t.float :longitude
      t.float :heading
      t.float :compass
      t.string :name

      t.timestamps
    end
  end
end
