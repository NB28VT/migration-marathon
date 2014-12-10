class RemoveIsbnAndDewey < ActiveRecord::Migration
  def up
    remove_column :books, :isbn
    remove_column :books, :dewey
  end

  def down
    add_column :books, :isbn, :integer
    add_column :books, :dewey, :integer
    
  end
end
