class Comment < ApplicationRecord
  belongs_to :post, counter_cache: true # post_id
  belongs_to :user # user_id
  belongs_to :post

  validates :content, presence: true
end
