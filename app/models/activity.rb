class Activity < ActiveRecord::Base
  attr_accessible :did, :name, :activity_set_id, :id

  belongs_to :activity_set
end
# == Schema Information
#
# Table name: activities
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  did             :boolean
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  activity_set_id :integer
#  answer          :text
#

