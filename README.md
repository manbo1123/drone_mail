# README

# DB設計

## users table
|Column|Type|Options|
|------|----|-------|
|nickname|string|null:false, unique: true|
|password|string|null:false|
|email|string|null:false, unique: true|
|first_name|string|null:false|
|family_name|string|null:false|
|first_name_kana|string|null:false|
|family_name_kana|string|null:false|
|phone_number|string| unique: true|

### Association
- has_many :comments, dependent: :destroy
- has_many :favorites, dependent: :destroy
- has_many :mystations, dependent: :destroy
- has_many :drone_evaluations
- has_one :profile, dependent: :destroy
- has_one :sns_authentication, dependent: :destroy
-  has_one :card, dependent: :destroy
- has_many :owner_drones, foreign_key: "owner_id", class_name: "drones"
- has_many :buyer_drones, foreign_key: "buyer_id", class_name: "drones"


## profiles table
|introduction|text||
|avatar|string||
|user|references|null: false, foreign_key: true|

### Association
- belongs_to :user


## sns_authentications table
|Column|Type|Options|
|------|----|-------|
|provider|string||
|uid|string||
|user|references|null: false, foreign_key: true|

### Association
- belongs_to :user


## cards table
|Column|Type|Options|
|------|----|-------|
|customer_id|string|null:false|
|card_id|string|null:false|
|user|references|null: false, foreign_key: true|

### Association
- belongs_to:user


# drones table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|introduction|text|null: false|
|price|integer|null: false|
|area|integer|null: false|
|maker|references|foreign_key: true|
|size|references|null: false, foreign_key: true|
|weight|references|null: false, foreign_key: true|
|feature|references|foreign_key: true|
|station|references|null: false, foreign_key: true|
|load|references|null: false, foreign_key: true|
|space|references|null: false, foreign_key: true|
|owner|references|null: false, foreign_key: true|
|buyer|references|foreign_key: true|
|status|enum|null: false, default: 0|

### Association
- has_many :comments, dependent: :destroy
- has_many :favorites, dependent: :destroy
- has_many :imgs, dependent: :destroy
- has_many :maintenances
- has_many :drone_featires
- has_many :log
- belongs_to :station
- belongs_to :maker, optional: true
- belongs_to_active_hash :size
- belongs_to_active_hash :weight
- belongs_to_active_hash :speed
- belongs_to_active_hash :load
- belongs_to_active_hash :space
- belongs_to :owner, class_name: "User"
- belongs_to :buyer, class_name: "User", optional: true


## stations table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string||

### Association
- has_many :drones
- has_ancestry


## imgs table
|Column|Type|Options|
|------|----|-------|
|src|string|null:false|
|drone|references|null: false, foreign_key: true|

### Association
- belongs_to :drone


## makers table
|Column|Type|Options|
|------|----|-------|
|name|string||
|model|string||

### Association
- has_many :drones


## makers table
|Column|Type|Options|
|------|----|-------|
|content|string|null: false|
|drone|references|null: false, foreign_key: true|

### Association
- belongs_to :drones


## favorites table
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|drone|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :drone


## mystations table
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user|references|null: false, foreign_key: true|
|station|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :drone


## comments table
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user|references|null: false, foreign_key: true|
|drone|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :drone


## logs table
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|drone|references|null: false, foreign_key: true|
|evaluation|references|foreign_key: true|
|post_code|integer(7)|null:false|
|prefecture_code|integer|null:false|
|city|string|null:false|
|house_number|string|null:false|
|building_name|string||
|review|text||
|destination|string||
|laggage|string||

### Association
- belongs_to :user
- belongs_to :drone
- belongs_to_active_hash :evaluation


## drone_features table
|Column|Type|Options|
|------|----|-------|
|feature|references|foreign_key: true|
|drone|references|foreign_key: true|

### Association
- belongs_to_active_hash :feature
- belongs_to :drone