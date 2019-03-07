class AddExtraDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string, limit: 60, null: false, default: ""
    add_column :users, :lastname, :string, limit: 60, null: false, default: ""
    add_column :users, :phone, :string, default: "0877558977"
    add_column :users, :userinfo, :text, null: false, default: ""
  end
end
