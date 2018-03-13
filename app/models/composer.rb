class Composer < ApplicationRecord
  has_many :compositions
  accepts_nested_attributes_for :compositions, reject_if: :all_blank, allow_destroy: true
  has_attached_file :profile_pic, :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
  validates_attachment_content_type :profile_pic, :content_type => /\Aimage\/.*\Z/
end
