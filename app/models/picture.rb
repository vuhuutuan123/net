# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  chapter_id :integer
#  picture    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Picture < ApplicationRecord
    belongs_to :chapter
    mount_uploader :picture, ImagePageUploader
end
