class System < ApplicationRecord

  has_many :vendors, through: :vendor_systems
  has_many :vendor_systems

  def get_vendor_systems
    @vendor_systems = VendorSystem.where(system_id: self.id)
    return @vendor_systems.sort_by{|vendor_system| vendor_system[:updated_at]}
  end

  def get_vendors(vendor_systems_hash)
    @vendors = Vendor.where(id: vendor_systems_hash.pluck(:vendor_id))
  end

  def get_reviews(vendor_systems_hash)
    @reviews = Review.where(vendor_system_id: vendor_systems_hash.pluck(:id))
  end

end
