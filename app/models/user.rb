class User < ActiveRecord::Base
  has_one :email
  accepts_nested_attributes_for :email, allow_destroy: true

  validates :name, presence: true
end
