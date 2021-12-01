class Cat < ActiveRecord::Base
  has_many :diseases

  mount_uploader :picture, PictureUploader




end
