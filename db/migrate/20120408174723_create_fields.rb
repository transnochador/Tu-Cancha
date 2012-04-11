class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :fieldname
      t.float :fieldwidth
      t.float :fieldlength
      t.string :fieldground
      t.boolean :lu
      t.boolean :ma
      t.boolean :mi
      t.boolean :ju
      t.boolean :vi
      t.boolean :sa
      t.boolean :do
      t.time :starthour
      t.time :endhour
      t.float :dayrate
      t.float :nightrate
      t.string :promo

      t.timestamps
    end
  end
end
