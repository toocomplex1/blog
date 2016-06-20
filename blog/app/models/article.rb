class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end