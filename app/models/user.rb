class User <  ApplicationRecord
    has_many :posts , foreign_key: :author_id
    has_many :comments
    has_many :likes

    validates :name, presence: true
    validates :photo, presence: true
    validates :bio, presence: true    


end