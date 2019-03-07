class AddUsertypeIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :usertype_id, :integer
  end
end
