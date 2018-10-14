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
  content:"出資者である農協、漁協、森組の上に立つ組織ではあるものの、実態は８割以上が農協からの出資であるため、施策は農業中心に偏りがち。協同組合という組織体制上、過酷なノルマ等はない反面「金庫の理念に沿った」業務遂行が求められる。ある意味（きつくはないけれど）全体主義的。銀行業界全般はそうだが土日に業務外行事や必要のない飲み会は当たり前、断ることも可能であるが自身の評価に跳ね返ってくる。体育会系の学生なら適合性があるがそうでない人にはストレスフルな環境になることは必至。しかし、１００兆を越えるB/Sとこれまでに培ってきた投資ノウハウによりこの低金利下でも業績は安定。事業モデルの盤石性は揺るぎない。",
  working_period:"導入3〜4年"
)
Review.create(
  category_id:2,
  vendor_id:1,
  system_id:1,
  user_id:1,
  score:4.5,
  content:"典型的な年功序列であり、5等級(10年目)までは同期一律で上がって行く。現段階での同期との差は残業の多寡によるところがほとんどである。10年目以降も課長クラスへの昇級が同期で数年ずれることはあっても、9割以上は課長クラスになっている。そのクラスでも残業代が出るため、だらだら残っている人間も散見される。ただし近年採用者が多いため、今後もその傾向だとは言い切れない。また年収のレンジが狭く、課長クラスの収入まではメガバンクと比較しても高いと言い切れるが、部長、役員になってもそうだとは言えない。",
  working_period:"導入5年以上"
)

# ユーザー情報を初期設定
User.create(mail_address: "sekiya@gmail.com", password: "password", nickname: "sekiya", industry_type: "メーカー", section: "経理・財務部門", company: "オービック", point: 0)
User.create(mail_address: "maekawa@gmail.com", password: "password", nickname: "maekawa", industry_type: "商社・卸売", section: "情報システム部門", company: "オービック", point: 0)
User.create(mail_address: "tokuma@gmail.com", password: "password", nickname: "tokuma", industry_type: "建設工事", section: "人事・総務部門", company: "オービック", point: 0)
User.create(mail_address: "inagaki@gmail.com", password: "password", nickname: "inagaki", industry_type: "小売・流通", section: "営業・業務部門", company: "オービック", point: 0)
User.create(mail_address: "wakita@gmail.com", password: "password", nickname: "wakita", industry_type: "不動産関連", section: "経営企画部門", company: "オービック", point: 0)

# カテゴリ情報を初期設定
Category.create(name: "企業安定性")
Category.create(name: "機能性")
Category.create(name: "サポート体制")
Category.create(name: "SEスキル")
Category.create(name: "システム拡張性・将来性")
Category.create(name: "改善提案力")
Category.create(name: "業界・業務ノウハウ")
Category.create(name: "製品価格")
