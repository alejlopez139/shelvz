class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.references :bookshelf, null: false, foreign_key: {to_table: :bookshelves}
      t.string :cover
      t.boolean :public, default: true
      t.text :notes
      t.boolean :fav, default: false
      t.boolean :rec, default: false

      t.timestamps
    end
  end
end
