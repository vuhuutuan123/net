# == Schema Information
#
# Table name: chapters
#
#  id         :integer          not null, primary key
#  comic_id   :integer
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Chapter < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :pictures, dependent: :destroy
    belongs_to :comic
  
    accepts_nested_attributes_for :pictures, allow_destroy: true,
      reject_if: proc{|attributes| attributes["picture"].blank?}
  
    validates :name, presence: true,
                     length: {maximum: Settings.chapter.name.max_length}
    scope :sort_by_name, ->{order :name}
    scope :recent_upload, ->{order updated_at: :desc}
end
