class Article < ApplicationRecord

    validates :title, presence: true, lenght: {minimum: 6, maximun: 100}
    validates :description, presence:true, lenght: {minimum: 10, maximun: 300}

end