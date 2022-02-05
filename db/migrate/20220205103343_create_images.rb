class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :path
      t.integer :format
      t.boolean :main

      t.timestamps
    end
  end
end
