class AddPvoiceToPresentationdetails < ActiveRecord::Migration[5.2]
  def change
    add_column :presentationdetails, :pvoice, :string, :default => 'none'
  end
end
