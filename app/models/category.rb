# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
    has_many :comics, dependent: :destroy
  
    validates :name, presence: true,
                     length: {maximum: Settings.category.name.max_length}
  
    scope :sort_by_name, ->{order :name}
end
