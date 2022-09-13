class AddPublishedDateToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :publishedDate, :date
  end
end
