class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :text, presence: true

  def update_comments_counter
    update(comments_counter: comments.count)
  end
end
