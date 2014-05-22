class Unit < ActiveRecord::Base
   
has_many :unit_colors
    has_many :paints, through: :unit_colors
    belongs_to :user
    validates :name, presence: true, length: {minimum: 3}
    validates :user_id, presence: true

    
    has_attached_file :photo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  },
  :default_style => :thumb,
  :default_url => '/pub_images/units/sadface.png'

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
