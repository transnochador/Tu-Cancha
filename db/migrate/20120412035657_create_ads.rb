class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :adtitle
      t.text :adcontent
      t.date :adstartdate
      t.date :adenddate
      t.float :adprice
      t.integer :adcount
      t.string :adlocation

      t.timestamps
    end
  end
end
