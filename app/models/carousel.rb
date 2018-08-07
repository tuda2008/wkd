# == Schema Information
#
# Table name: carousels
#
#  id      :bigint(8)        not null, primary key
#  tag     :string(255)      not null
#  images  :string(255)
#  visible :boolean          default(FALSE)
#

class Carousel < ApplicationRecord
  TAG_HOME = "home"
  mount_uploaders :images, ImageUploader
  serialize :images, Array

  validates :tag, presence: true
  validates_uniqueness_of :tag
  validate :images_not_empty
  
  scope :visible, -> { where(visible: true) }
  scope :invisible, -> { where(visible: false) }
  scope :home, -> { where(tag: TAG_HOME) }

  # images不能为空检查
  def images_not_empty
    if images.empty?
      errors.add(:base, '展播图片不能为空，至少需要一张图片')
      return false  
    end
  end
end