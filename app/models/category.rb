class Category < ApplicationRecord

    

    validates :name, presence: true, length:{minimum:8, maximum:25},
    uniqueness: { case_sensitive: false }

end