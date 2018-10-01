class Review < ApplicationRecord

  def get_category_name
    return Category.find_by(id: self.category_id).name
  end

  def get_user
    return User.find_by(id: self.user_id)
  end

end
