class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :body, presence: true
  validates_uniqueness_of :book_id, scope: :user_id
end
