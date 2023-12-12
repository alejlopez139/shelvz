class AddDetailsToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :publisher, :string
    add_column :books, :publish_date, :string
    add_column :books, :openlibID, :string
  end
end
