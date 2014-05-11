class Unit < ActiveRecord::Base
    belongs_to :user
    validates :name, presence: true, length: {minimum: 3}
    validates :user_id, presence: true

    has_attached_file :photo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
