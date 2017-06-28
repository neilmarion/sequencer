class Sequence < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
