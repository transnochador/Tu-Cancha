class AddGmAddressToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :gmaddress, :string

  end
end
