# ベンダー情報を初期設定
Vendor.create(name: "オービック")
Vendor.create(name: "富士通")
Vendor.create(name: "NEC")
Vendor.create(name: "ワークスアプリケーションズ")
Vendor.create(name: "NTTデータ")
Vendor.create(name: "日立ソリューションズ")
Vendor.create(name: "日立システムズ")
Vendor.create(name: "東芝デジタルソリューションズ")
Vendor.create(name: "SCSK")
Vendor.create(name: "オロ")
# 11-----------------------------
Vendor.create(name: "ミロク情報サービス")
Vendor.create(name: "SAPジャパン")
Vendor.create(name: "日本オラクル")
Vendor.create(name: "日本アイ・ビー・エム(IBM)")
Vendor.create(name: "大塚商会")
Vendor.create(name: "東計電算")
Vendor.create(name: "コンシスト")
Vendor.create(id: 99 , name: "その他のベンダー")


# システム情報を初期設定
System.create(name: "OBIC7")
System.create(name: "GLOVIA(グロービア)")
System.create(name: "SAP(サップ)")
System.create(name: "Oracle(オラクル)")
System.create(name: "Microsoft Dynamics(ダイナミクス)")
System.create(name: "EXPLANNER(エクスプランナー)")
System.create(name: "POSITIVE(ポジティブ)")
System.create(name: "STAFFBRAIN(スタッフブレイン)")
System.create(name: "SuperStream(スーパーストリーム)")
System.create(name: "COMPANY(カンパニー)")
# 11-----------------------------
System.create(name: "HUE(ヒュー)")
System.create(name: "Biz∫(ビズインテグラル)")
System.create(name: "intra-mart(イントラマート)")
System.create(name: "FutureStage(フューチャーステージ)")
System.create(name: "ProActive(プロアクティブ)")
System.create(name: "ZAC Exterprise(ザック)")
System.create(name: "Generalist(ジェネラリスト)")
System.create(name: "Galileopt(ガリレオプト)")
System.create(name: "MJSLINK")
System.create(name: "GRANDIT(グランディット)")
# 21-----------------------------
System.create(name: "NetSuite(ネットスイート)")
System.create(name: "Plaza-i(プラザアイ)")
System.create(name: "SMILE(スマイル)")
System.create(name: "オーダーシリーズ")
System.create(name: "Jシリーズ[不動産関連]")
System.create(name: "Billy(ビリー)")
System.create(name: "スケルトンパッケージ")
System.create(name: "IBM i [AS/400系]")
System.create(name: "奉行シリーズ")
System.create(id: 99 , name: "その他のシステム")



# ベンダー・システム組合せ情報を初期設定
VendorSystem.create(vendor_id: 1, system_id: 1)
VendorSystem.create(vendor_id: 2, system_id: 2)
VendorSystem.create(vendor_id: 2, system_id: 3)
VendorSystem.create(vendor_id: 2, system_id: 4)
VendorSystem.create(vendor_id: 2, system_id: 5)
VendorSystem.create(vendor_id: 3, system_id: 3)
VendorSystem.create(vendor_id: 3, system_id: 5)
VendorSystem.create(vendor_id: 3, system_id: 6)
VendorSystem.create(vendor_id: 3, system_id: 7)
VendorSystem.create(vendor_id: 3, system_id: 8)
VendorSystem.create(vendor_id: 3, system_id: 9)
VendorSystem.create(vendor_id: 3, system_id: 20)
VendorSystem.create(vendor_id: 4, system_id: 10)
VendorSystem.create(vendor_id: 4, system_id: 11)
VendorSystem.create(vendor_id: 5, system_id: 3)
VendorSystem.create(vendor_id: 5, system_id: 12)
VendorSystem.create(vendor_id: 5, system_id: 13)
VendorSystem.create(vendor_id: 6, system_id: 3)
VendorSystem.create(vendor_id: 6, system_id: 5)
VendorSystem.create(vendor_id: 6, system_id: 14)
VendorSystem.create(vendor_id: 7, system_id: 3)
VendorSystem.create(vendor_id: 7, system_id: 9)
VendorSystem.create(vendor_id: 7, system_id: 14)
VendorSystem.create(vendor_id: 7, system_id: 16)
VendorSystem.create(vendor_id: 8, system_id: 4)
VendorSystem.create(vendor_id: 8, system_id: 17)
VendorSystem.create(vendor_id: 9, system_id: 3)
VendorSystem.create(vendor_id: 9, system_id: 4)
VendorSystem.create(vendor_id: 9, system_id: 9)
VendorSystem.create(vendor_id: 9, system_id: 15)
VendorSystem.create(vendor_id: 10, system_id: 16)
VendorSystem.create(vendor_id: 11, system_id: 18)
VendorSystem.create(vendor_id: 11, system_id: 19)
VendorSystem.create(vendor_id: 12, system_id: 3)
VendorSystem.create(vendor_id: 13, system_id: 4)
VendorSystem.create(vendor_id: 13, system_id: 21)
VendorSystem.create(vendor_id: 14, system_id: 4)
VendorSystem.create(vendor_id: 14, system_id: 28)
VendorSystem.create(vendor_id: 15, system_id: 23)
VendorSystem.create(vendor_id: 15, system_id: 29)
VendorSystem.create(vendor_id: 16, system_id: 24)
VendorSystem.create(vendor_id: 16, system_id: 25)
VendorSystem.create(vendor_id: 16, system_id: 26)
VendorSystem.create(vendor_id: 17, system_id: 27)


# 口コミ情報を初期設定
Review.create(
  category_id:1,
  vendor_system_id:1,
  user_id:1,
  score:4.0,
  content:"出資者である農協、漁協、森組の上に立つ組織ではあるものの、実態は８割以上が農協からの出資であるため、施策は農業中心に偏りがち。協同組合という組織体制上、過酷なノルマ等はない反面「金庫の理念に沿った」業務遂行が求められる。ある意味（きつくはないけれど）全体主義的。銀行業界全般はそうだが土日に業務外行事や必要のない飲み会は当たり前、断ることも可能であるが自身の評価に跳ね返ってくる。体育会系の学生なら適合性があるがそうでない人にはストレスフルな環境になることは必至。しかし、１００兆を越えるB/Sとこれまでに培ってきた投資ノウハウによりこの低金利下でも業績は安定。事業モデルの盤石性は揺るぎない。",
  working_period:"導入3〜4年"
)
Review.create(
  category_id:2,
  vendor_system_id:8,
  user_id:1,
  score:4.5,
  content:"典型的な年功序列であり、5等級(10年目)までは同期一律で上がって行く。現段階での同期との差は残業の多寡によるところがほとんどである。10年目以降も課長クラスへの昇級が同期で数年ずれることはあっても、9割以上は課長クラスになっている。そのクラスでも残業代が出るため、だらだら残っている人間も散見される。ただし近年採用者が多いため、今後もその傾向だとは言い切れない。また年収のレンジが狭く、課長クラスの収入まではメガバンクと比較しても高いと言い切れるが、部長、役員になってもそうだとは言えない。",
  working_period:"導入5年以上"
)

# ユーザー情報を初期設定
User.create(mail_address: "sekiya@gmail.com", password: "password", nickname: "sekiya", industry_type_id: 1, section_id: 2, company: "オービック", point: 0)
User.create(mail_address: "maekawa@gmail.com", password: "password", nickname: "maekawa", industry_type_id: 2, section_id: 4, company: "オービック", point: 0)
User.create(mail_address: "tokuma@gmail.com", password: "password", nickname: "tokuma", industry_type_id: 3, section_id: 3, company: "オービック", point: 0)
User.create(mail_address: "inagaki@gmail.com", password: "password", nickname: "inagaki", industry_type_id: 4, section_id: 5, company: "オービック", point: 0)
User.create(mail_address: "wakita@gmail.com", password: "password", nickname: "wakita", industry_type_id: 5, section_id: 1, company: "オービック", point: 0)

# カテゴリ情報を初期設定
Category.create(name: "企業安定性")
Category.create(name: "機能性")
Category.create(name: "サポート体制")
Category.create(name: "SEスキル")
Category.create(name: "システム拡張性・将来性")
Category.create(name: "改善提案力")
Category.create(name: "業界・業務ノウハウ")
Category.create(name: "製品価格")

# 業界種別情報を初期設定
IndustryType.create(name: "メーカー")
IndustryType.create(name: "商社・卸売")
IndustryType.create(name: "建設工事")
IndustryType.create(name: "小売・流通")
IndustryType.create(name: "不動産関連")
IndustryType.create(name: "運輸・物流")
IndustryType.create(name: "情報サービス")
IndustryType.create(name: "金融")
IndustryType.create(name: "その他")

# 業務種別情報を初期設定
BusinessType.create(name: "製造・原価管理")
BusinessType.create(name: "販売・購買管理")
BusinessType.create(name: "プロジェクト案件管理")
BusinessType.create(name: "不動産管理")
BusinessType.create(name: "財務会計・管理会計")
BusinessType.create(name: "人事給与勤怠")

# 部署情報を初期設定
Section.create(name: "経営層・経営企画")
Section.create(name: "経理・財務")
Section.create(name: "人事・総務")
Section.create(name: "情報システム")
Section.create(name: "業務・事務")
Section.create(name: "営業・企画")
Section.create(name: "その他")
