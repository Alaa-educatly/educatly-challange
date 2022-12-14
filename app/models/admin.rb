class Admin < ApplicationRecord
    has_many :products, dependent: :destroy
    before_save { self.email = email.downcase}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { minimum: 4, maximum: 254 },
              uniqueness: { case_sensitive: false },
              format: { with: VALID_EMAIL_REGEX }
    validates :password, presence: true
    has_secure_password
end
