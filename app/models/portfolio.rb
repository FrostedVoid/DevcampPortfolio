class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image
  # Demonstration Purposes
  def self.angular
    where(subtitle: 'Angular')
  end
  #-----------------------

  def self.by_position
    order("position ASC")
  end

  scope :portfolio_post, -> {where(subtitle: 'My great service')}

  # Sets default images
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
