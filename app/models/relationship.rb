# == Schema Information
#
# Table name: relationships
#
#  id                    :integer          not null, primary key
#  comic_id              :integer
#  user_id               :integer
#  relationshipable_id   :integer
#  relationshipable_type :string(255)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
# Indexes
#
#  following                        (comic_id,user_id,relationshipable_type) UNIQUE
#  index_relationships_on_comic_id  (comic_id)
#  index_relationships_on_user_id   (user_id)
#

class Relationship < ApplicationRecord
    belongs_to :relationshipable, polymorphic: true
    belongs_to :user
    belongs_to :comic
end
  
