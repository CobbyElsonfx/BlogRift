class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  validates :title, presence: true
  validates :text, presence: true


  def recent_comments(limit = 5)
    comments.order(created_at: :desc).limit(limit)
  end

  def update_comments_counter
    update(comments_counter: comments.count)
  end

  def update_likes_counter
    update(likes_counter: likes.count)
  end
end
