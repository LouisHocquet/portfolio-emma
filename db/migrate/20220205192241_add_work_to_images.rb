class AddWorkToImages < ActiveRecord::Migration[6.1]
  def change
    add_reference :images, :work, null: false, foreign_key: true
  end
end
