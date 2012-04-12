class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :place_id
      t.string :svctype
      t.float :svcprice
      t.string :svcpriceconcept
      t.text :svcdescription

      t.timestamps
    end
  end
end
