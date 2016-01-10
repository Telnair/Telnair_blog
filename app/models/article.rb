class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :category
  validates :name, :content, presence: true
  validates :name, uniqueness: true
end
