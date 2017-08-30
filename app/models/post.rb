# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ApplicationRecord
  validates :title, :presence => true
  belongs_to :user, :optional => true
  has_many :comments, :dependent => :destroy
end
