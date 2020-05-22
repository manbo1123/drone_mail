class Drone < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :imgs, dependent: :destroy
  has_many :drone_features
  belongs_to :station
  belongs_to :maker, optional: true
  belongs_to_active_hash :size
  belongs_to_active_hash :weight
  belongs_to_active_hash :speed
  belongs_to_active_hash :load
  belongs_to_active_hash :space
  accepts_nested_attributes_for :imgs, allow_destroy: true

  enum status: {requestable: 0, in_transit: 1,in_preparation: 2 }

  validates :name, presence: true
  validates :introduction, presence: true
  validates :price, presence: true
  validates :area, presence: true
  validates :status, presence: true
  validates :size_id, presence: true
  validates :weight_id, presence: true
  validates :load_id, presence: true
  validates :space_id, presence: true
end