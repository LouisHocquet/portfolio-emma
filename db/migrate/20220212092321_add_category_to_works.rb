class AddCategoryToWorks < ActiveRecord::Migration[6.1]
  def change
    add_reference :works, :category, null: false, foreign_key: true
  end
end
