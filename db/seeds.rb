# ベンダー情報を初期設定
Vendor.create(name: "オービック")
Vendor.create(name: "富士通")
Vendor.create(name: "ワークスアプリケーションズ")
Vendor.create(name: "NEC")
Vendor.create(name: "NTTデータ")
Vendor.create(name: "日立ソリューションズ")
Vendor.create(name: "SCSK")
Vendor.create(name: "東計電算")
Vendor.create(name: "コンシスト")
Vendor.create(name: "東芝ソリューションズ")

# システム情報を初期設定
System.create(name: "OBIC7", vendor_id: 1, business_type: ["会計", "人事給与", "販売管理"])
System.create(name: "GLOVIA", vendor_id: 2, business_type: ["会計", "人事給与", "販売管理"])

# 口コミ情報を初期設定
Review.create(
  category_id:1,
  vendor_id:1,
  system_id:1,
  user_id:1,
  score:4.0,
  content:"サポートが良い"
)
Review.create(
  category_id:2,
  vendor_id:1,
  system_id:1,
  user_id:1,
  score:4.5,
  content:"業界に詳しい"
)

# ユーザー情報を初期設定
User.create(mail_address: "sekiya@gmail.com", password: "password", nickname: "sekiya")
User.create(mail_address: "maekawa@gmail.com", password: "password", nickname: "maekawa")
User.create(mail_address: "tokuma@gmail.com", password: "password", nickname: "tokuma")
User.create(mail_address: "inagaki@gmail.com", password: "password", nickname: "inagaki")
User.create(mail_address: "wakita@gmail.com", password: "password", nickname: "wakita")

# カテゴリ情報を初期設定
Category.create(name: "企業安定性")
Category.create(name: "機能性")
Category.create(name: "サポート体制")
Category.create(name: "SEスキル")
Category.create(name: "システム拡張性・将来性")
Category.create(name: "改善提案力")
Category.create(name: "業界・業務ノウハウ")
Category.create(name: "製品価格")
