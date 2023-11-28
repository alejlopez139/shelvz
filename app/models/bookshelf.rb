# == Schema Information
#
# Table name: bookshelves
#
#  id         :bigint           not null, primary key
#  book_count :integer
#  name       :string
#  public     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :bigint           not null
#
# Indexes
#
#  index_bookshelves_on_owner_id  (owner_id)
#
# Foreign Keys
#
#  fk_rails_...  (owner_id => users.id)
#
class Bookshelf < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  has_many :bookshelf_books
  has_many :books, through: :bookshelf_books
  validates :name, presence: true
  validates :owner_id, presence: true
end