class Challenge < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 255}, uniqueness: true
  validates :team_id, presence: true
  validates :image, length: {maximum: 2048}
end
