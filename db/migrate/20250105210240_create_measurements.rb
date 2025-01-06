class CreateMeasurements < ActiveRecord::Migration[8.0]
  def change
    create_table :measurements do |t|
      t.float :dip
      t.float :strike
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
