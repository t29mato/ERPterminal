class User < ApplicationRecord

  # validates :mail_address, presence: true
  # validates :password, { presence: true, length: {minimum: 6, maximum: 12} }
  # validates :nickname, presence: true

  validate :add_error_messages
  def add_error_messages
    # メールアドレスにエラーメッセージを追加する
    if mail_address.blank?
      errors[:mail_address] << "メールアドレスは入力必須です。"
    end
    # パスワードにエラーメッセージを追加する
    if password.blank?
      errors[:password] << "パスワードは入力必須です。"
    end
    if password.length < 6
      errors[:password] << "6文字以上で入力して下さい。"
    end
    if password.length > 12
      errors[:password] << "12文字以下で入力して下さい。"
    end
    # お名前にエラーメッセージを追加する
    if nickname.blank?
      errors[:nickname] << "お名前は入力必須です。"
    end
    # 所属業界にエラーメッセージを追加する
    if industry_type_id.blank?
      errors[:industry_type_id] << "所属業界は入力必須です。"
    end
    # 部署にエラーメッセージを追加する
    if section_id.blank?
      errors[:section_id] << "部署は入力必須です。"
    end

  end

end
