class SplitReaderName < ActiveRecord::Migration
  def up
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string
    Reader.all.each do |reader|
      full_name_array = reader.full_name.split(" ")
      first_name = full_name_array[0]
      last_name = full_name_array[1]
      reader.first_name = first_name
      reader.last_name = last_name
    end
  end

  def down
    remove_column :readers, :first_name
    remove_column :readers, :last_name
  end
end
