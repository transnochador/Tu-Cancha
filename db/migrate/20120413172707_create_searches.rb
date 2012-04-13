class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :district
      t.date :attentionday
      t.time :sincehour
      t.time :tohour
      t.string :other

      t.timestamps
    end
  end
end
