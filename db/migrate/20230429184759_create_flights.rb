class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :origin
      t.string :destination
      t.time :departure_time
      t.time :arrival_time

      t.timestamps
    end
  end
end
