class Vendor < ApplicationRecord

  has_many :systems, through: :vendor_systems
  has_many :vendor_systems

  def get_vendor_systems
    @vendor_systems = VendorSystem.where(vendor_id: self.id)
    return @vendor_systems.sort_by{|vendor_system| vendor_system[:updated_at]}
  end

  def get_systems(vendor_systems_hash)
    @systems = System.where(id: vendor_systems_hash.pluck(:system_id))
  end

  def get_reviews(vendor_systems_hash)
    @reviews = Review.where(vendor_system_id: vendor_systems_hash.pluck(:id))
  end

end
