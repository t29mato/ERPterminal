class Vendor < ApplicationRecord

  has_many :systems, through: :vendor_systems
  has_many :vendor_systems

  def reviews
    @reviews = Review.where(vendor_id: self.id)
    return @reviews.sort_by{|review| review[:updated_at]}
  end

end
