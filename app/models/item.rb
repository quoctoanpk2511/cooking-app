class Item < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_one_attached :image_url
    has_many :recipes, dependent: :destroy, inverse_of: :item
    accepts_nested_attributes_for :recipes, allow_destroy: true, reject_if: :all_blank
end
