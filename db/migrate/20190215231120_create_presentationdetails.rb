class CreatePresentationdetails < ActiveRecord::Migration[5.2]
  def change
    create_table :presentationdetails do |t|
      t.string :tname, limit: 60, null: false
      t.text :tdescription, null: false
      t.string :fostudy, limit: 60, null: false
      t.datetime :dtpresent, default: -> { 'CURRENT_TIMESTAMP' }
      t.string :prname, limit: 60, null: false
      t.text :prdetails, null: false
      t.string :typepresent, default: "Free"
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
