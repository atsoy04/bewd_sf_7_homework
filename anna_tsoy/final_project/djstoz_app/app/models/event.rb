# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string
#  location    :string
#  date        :string
#  description :string
#  deejay_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
  belongs_to :deejay

  validates_presence_of :name, :location, :date
  validates_uniqueness_of :name
end
