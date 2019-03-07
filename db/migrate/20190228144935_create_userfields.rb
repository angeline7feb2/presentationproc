class CreateUserfields < ActiveRecord::Migration[5.2]
  def change
    create_table :userfields do |t|
      t.string :ufield, limit: 60, null: false, default: ""

      t.timestamps
    end
  end
end
