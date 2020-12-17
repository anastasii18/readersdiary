class BooksLists < ActiveRecord::Migration[6.0]
  def change
    create_table :books_lists do |t|
      t.references :list
      t.references :book
    end
  end
end
