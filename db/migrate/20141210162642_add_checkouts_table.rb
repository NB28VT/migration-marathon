class AddCheckoutsTable < ActiveRecord::Migration
  def up
    create_table :checkouts do |t|
      t.integer :book_id, null: false
      t.string :reader_id, null: false

      t.timestamps
    end
  end

  def down
    drop_table :checkouts
  end

end
