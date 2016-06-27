	# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#

class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
  
  has_attached_file :poster, styles: { medium: "300x300>", thumb: "100x100>" },
  default_url: "/images/:style/missing.png"
  validates_attachment_content_type :poster, content_type: /\Aimage\/.*\Z/

  def should_generate_new_friendly_id?
		title_changed?
  end

  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end

#for adding tags
class Article < ActiveRecord::Base
  acts_as_taggable_on :tags
end

Article.tagged_with("rails")