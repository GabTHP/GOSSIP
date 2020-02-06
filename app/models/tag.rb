class Tag < ApplicationRecord
  has_many :tagragots
  has_many :ragots, through: :tagragots
end
