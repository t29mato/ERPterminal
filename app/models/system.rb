class System < ApplicationRecord

  has_many :vendors, through: :vendor_systems
  has_many :vendor_systems

end
