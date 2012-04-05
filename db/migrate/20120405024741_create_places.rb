class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :nameplace
      t.string :address
      t.string :district
      t.string :telephone

      t.timestamps
    end
  end
end
