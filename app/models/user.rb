class User < ApplicationRecord

    #before_save { self.email = email.downcase() }
    has_many :articles

    validates :username, presence: true ,
    uniqueness: { case_sensitive: false }, length: {minimum:3, maximum: 25}

    #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\dz-.]+\.[a-z]+\z/i

    validates :email, presence: true ,
    uniqueness: { case_sensitive: false }, length: {maximum: 100},
    format:{ with: URI::MailTo::EMAIL_REGEXP }
    
    has_secure_password
end