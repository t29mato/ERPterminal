class Vendor < ApplicationRecord

  def reviews
    @reviews = Review.where(vendor_id: self.id)
    return @reviews.sort_by{|review| review[:updated_at]}
  end

end
