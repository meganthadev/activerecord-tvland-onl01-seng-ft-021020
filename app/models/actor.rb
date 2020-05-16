class Actor < ActiveRecord::Base

  attr_accessor :first_name, :last_name
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.map{ |character| "#{character.name} - #{character.show.name}"}
  end
end
