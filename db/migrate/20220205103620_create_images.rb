class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :path
      t.integer :format
      t.boolean :main
      t.belongs_to :work, foreign_key: true

      t.timestamps
    end
  end
end
