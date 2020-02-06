class Ragot < ApplicationRecord
  belongs_to :user
  has_many :tagragots
  has_many :tags, through: :tagragots
end
