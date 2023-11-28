class CreateBookshelves < ActiveRecord::Migration[7.0]
  def change
    create_table :bookshelves do |t|
      t.boolean :public
      t.references :owner, null: false, foreign_key: { to_table: :users}
      t.integer :book_count
      t.string :name

      t.timestamps
    end
  end
end
