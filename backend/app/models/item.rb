class Item < ActiveRecord::Base
  validates :name, presence: true
  validates :grocery_list, presence: true

  belongs_to :grocery_list
end
