# == Schema Information
#
# Table name: partners
#
#  id      :bigint(8)        not null, primary key
#  title   :string(255)      not null
#  web_url :string(255)      default("")
#  visible :boolean          default(FALSE)
#

class Partner < ApplicationRecord
  validates :title, presence: true
  validates_uniqueness_of :title
  
  scope :visible, -> { where(visible: true) }
  scope :invisible, -> { where(visible: false) }
end