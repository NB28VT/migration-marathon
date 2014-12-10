class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.integer :isbn, null: false
      t.integer :dewey, null: false

      t.timestamps
    end
  end
end
