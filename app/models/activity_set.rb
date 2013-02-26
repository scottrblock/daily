class ActivitySet < ActiveRecord::Base
  attr_accessible :title, :body, :user_id

  has_many :activities, :inverse_of => :activity_set
  belongs_to :user
end
# == Schema Information
#
# Table name: activity_sets
#
#  id         :integer         not null, primary key
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  user_id    :integer
#

