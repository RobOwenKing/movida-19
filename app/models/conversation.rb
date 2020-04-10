class Conversation < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :messages
end
