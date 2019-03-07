class CreateUsertypes < ActiveRecord::Migration[5.2]
  def change
    create_table :usertypes do |t|
      t.string :utype, limit: 60, null: false, default: ""

      t.timestamps
    end
  end
end
