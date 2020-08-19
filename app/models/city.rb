class City < ApplicationRecord

  def self.search(search)
     where("name LIKE ?", "%#{search}%")
     where("region LIKE ?", "%#{search}%")
     where("place LIKE ?", "%#{search}%")
  end

end
