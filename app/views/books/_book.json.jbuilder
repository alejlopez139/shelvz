json.extract! book, :id, :title, :author, :bookshelf_id, :cover, :public, :notes, :fav, :rec, :created_at, :updated_at
json.url book_url(book, format: :json)
