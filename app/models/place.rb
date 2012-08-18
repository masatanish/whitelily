class Place < ActiveRecord::Base
  attr_accessible :address, :description, :latitude, :longitude, :name, :gmaps, :tabelog_url

  belongs_to :user
  belongs_to :last_editor, :class_name => 'User'

  validates_format_of :tabelog_url, :with => /^http:\/\/tabelog\.com\/.*/, :allow_blank => true


  acts_as_gmappable :check_process => false
  def gmaps4rails_address
    self.address
  end
end
