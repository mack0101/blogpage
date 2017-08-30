# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  username   :string
#  body       :text
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :post, :optional => true
  belongs_to :user, :optional => true
end
