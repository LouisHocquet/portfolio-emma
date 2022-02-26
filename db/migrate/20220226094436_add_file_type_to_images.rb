class AddFileTypeToImages < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :file_type, :integer
  end
end
