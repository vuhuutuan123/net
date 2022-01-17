# == Schema Information
#
# Table name: comic_follows
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ComicFollow < ApplicationRecord
    has_one :relationship, as: :relationshipable, dependent: :destroy
    has_one :comic, through: :relationship, source: :comic
    has_one :user, through: :relationship, source: :user
  
    scope :recently, ->{order created_at: :desc}
end
