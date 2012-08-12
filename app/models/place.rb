class Place < ActiveRecord::Base
  attr_accessible :address, :description, :latitude, :longitude, :name, :gmaps
  belongs_to :user
  belongs_to :last_editor, :class_name => 'User'

  acts_as_gmappable :check_process => false
  def gmaps4rails_address
    self.address
  end
end
