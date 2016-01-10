class Work < ActiveRecord::Base
  validates :name, :description, :image, :thumbnail, presence: true
  validates :name, uniqueness: true
end
