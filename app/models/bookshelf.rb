# == Schema Information
#
# Table name: bookshelves
#
#  id         :bigint           not null, primary key
#  book_count :integer          default(0)
#  name       :citext
#  public     :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :bigint           not null
#
# Indexes
#
#  index_bookshelves_on_name      (lower((name)::text))
#  index_bookshelves_on_owner_id  (owner_id)
#
# Foreign Keys
#
#  fk_rails_...  (owner_id => users.id)
#
class Bookshelf < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  belongs_to :owner, class_name: 'User', counter_cache: :shelf_count
  has_many :bookshelf_books
  has_many :books, dependent: :destroy
  validates :name, presence: true
  #validates :owner_id, presence: true
end
