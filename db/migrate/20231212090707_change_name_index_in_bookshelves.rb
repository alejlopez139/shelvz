class ChangeNameIndexInBookshelves < ActiveRecord::Migration[7.0]
  def change
    remove_index :bookshelves, name: 'index_bookshelves_on_name'
    add_index :bookshelves, 'lower(name)', name: 'index_bookshelves_on_name'
  end
end
