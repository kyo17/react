class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post, counter_cache: true
  default_scope { order(created_at: :desc) }
end
