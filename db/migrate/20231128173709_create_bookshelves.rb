class CreateBookshelves < ActiveRecord::Migration[7.0]
  def change
    create_table :bookshelves do |t|
      enable_extension("citext")
      t.boolean :public, default: true
      t.references :owner, null: false, foreign_key: { to_table: :users}
      t.integer :book_count, default: 0
      t.citext :name

      t.timestamps
    end
    add_index :bookshelves, :name,            unique: true
  end
end
