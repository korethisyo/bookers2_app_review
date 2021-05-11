class Book < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: {maximum: 200}

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def self.search_for(word, method)
    if method == "perfect"
      Book.where(title: "#{word}")
    elsif method == "forward"
      Book.where('title LIKE ?', "#{word}%")
    elsif method == "backward"
      Book.where('title LIKE ?', "%#{word}")
    else
      Book.where('title LIKE ?', "%#{word}%")
    end
  end
end
