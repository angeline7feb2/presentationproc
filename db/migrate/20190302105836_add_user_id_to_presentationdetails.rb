class AddUserIdToPresentationdetails < ActiveRecord::Migration[5.2]
  def change
    add_column :presentationdetails, :user_id, :integer
  end
end
