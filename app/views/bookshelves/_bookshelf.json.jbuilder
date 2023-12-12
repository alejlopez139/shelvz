json.extract! bookshelf, :id, :public, :owner_id, :book_count, :name, :created_at, :updated_at
json.url bookshelf_url(bookshelf, format: :json)
