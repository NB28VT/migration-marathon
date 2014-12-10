class AddReaderTable < ActiveRecord::Migration
  def up
    create_table :readers do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.string :phone_number, null: false

      t.timestamps
    end

  end

  def down
    drop_table :readers
  end
end
