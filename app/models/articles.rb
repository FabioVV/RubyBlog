class Article < ApplicationRecord

    #paginates_per 1
    belongs_to :user

    validates :title, presence: true, length: { minimum: 6 }
    validates :description, presence:true, length: { maximum: 300 }

end
