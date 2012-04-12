class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :place_id
      t.string :evname
      t.string :evprize
      t.integer :evnummax
      t.date :evdeadline

      t.timestamps
    end
  end
end
