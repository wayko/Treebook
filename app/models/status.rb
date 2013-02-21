class Status < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user

  attr_accessible :user_id
  belongs_to :current_user

  validates :content, presence: true,
                      length: {minimum: 2}

  validates :user_id, presence: true
end
