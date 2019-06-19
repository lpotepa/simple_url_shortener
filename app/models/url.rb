class Url < ApplicationRecord
  validates :url, url: true, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true
end
