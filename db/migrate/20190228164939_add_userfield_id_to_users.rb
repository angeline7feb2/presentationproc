class AddUserfieldIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :userfield_id, :integer
  end
end
