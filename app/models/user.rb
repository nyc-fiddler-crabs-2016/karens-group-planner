class User < ActiveRecord::Base
  has_secure_password
  has_many :memberships
  has_many :groups, through: :memberships

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
