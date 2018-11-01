class Review < ApplicationRecord

  def get_category_name
    return Category.find_by(id: self.category_id).name
  end

  def get_user
    return User.find_by(id: self.user_id)
  end

  def get_industry_type_name(industry_type_id)
    return IndustryType.find_by(id: industry_type_id).name
  end

  def get_section_name(section_id)
    return Section.find_by(id: section_id).name
  end

end
