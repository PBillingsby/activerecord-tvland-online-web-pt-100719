class Actor < ActiveRecord::Base
  has_many :characters
  has_many :show

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters.collect {|character| "#{character.name} - #{character.show.name}"}.join
  end
end