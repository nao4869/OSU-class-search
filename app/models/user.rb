class User < ApplicationRecord
    # this will change all email to lowercase and save it to DB
    before_save { self.email = email.downcase }

    validates :username, presence: true, 
    uniqueness: {case_sensitive: false}, 
    length: {minimum: 3, maximum: 30}

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :email, presence: true, 
    uniqueness: {case_sensitive: false}, 
    length: {maximum: 50}, format: {with: VALID_EMAIL_REGEX}

    # hash the user password
    has_secure_password
end