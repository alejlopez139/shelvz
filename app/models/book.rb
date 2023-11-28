# == Schema Information
#
# Table name: books
#
#  id           :bigint           not null, primary key
#  author       :string
#  cover        :string
#  fav          :boolean          default(FALSE)
#  notes        :text
#  public       :boolean          default(TRUE)
#  rec          :boolean          default(FALSE)
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  bookshelf_id :bigint           not null
#
# Indexes
#
#  index_books_on_bookshelf_id  (bookshelf_id)
#
# Foreign Keys
#
#  fk_rails_...  (bookshelf_id => bookshelves.id)
#
class Book < ApplicationRecord
  belongs_to :bookshelf
  has_one :owner, through: :bookshelf
  
end
