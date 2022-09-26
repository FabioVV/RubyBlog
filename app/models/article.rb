class Article < ApplicationRecord

    #paginates_per 1
    belongs_to :user
    has_many :article_categories
    has_many :categories, through: :article_categories

    validates :title, presence: true, length: { minimum: 6 }
    validates :description, presence:true, length: { maximum: 300 }

end
