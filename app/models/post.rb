class Post < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 140 }
  scope :index_all, -> { order(:created_at).reverse_order }
end
