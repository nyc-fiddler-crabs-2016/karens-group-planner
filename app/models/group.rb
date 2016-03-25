class Group < ActiveRecord::Base
  has_many :memberships
  has_many :events
  has_many :users, through: :memberships

  validates :name, presence: true

end
