class Book < ApplicationRecord
  validates :title, presence: true
  belongs_to :author
  has_many :lists
end