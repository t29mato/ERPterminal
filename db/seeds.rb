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
System.create(name: "OBIC7", vendor_id: 1, category: "会計")
System.create(name: "OBIC7", vendor_id: 1, category: "人事給与")
System.create(name: "OBIC7", vendor_id: 1, category: "販売管理")
System.create(name: "GLOVIA", vendor_id: 2, category: "会計")
System.create(name: "GLOVIA", vendor_id: 2, category: "人事給与")
System.create(name: "GLOVIA", vendor_id: 2, category: "販売管理")
