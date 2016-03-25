class Event < ActiveRecord::Base
  belongs_to :group

  validates :title, presence: true
  validates :group_id, presence: true

end
