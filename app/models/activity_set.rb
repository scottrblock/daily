class ActivitySet < ActiveRecord::Base
  attr_accessible :name, :id, :user_id, :activities, :activity_ids

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
#  name       :string(255)
#

