class AddPersonidToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :person_id, :integer

  end
end
