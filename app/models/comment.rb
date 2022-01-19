# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  chapter_id :integer
#  content    :string(255)
#  parent_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :chapter
  
    validates :content, presence: true,
                        length: {maximum: Settings.comment.content.max_length}
  
    scope :order_comments, ->{order created_at: :desc}
end
  
