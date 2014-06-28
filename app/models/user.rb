class User < ActiveRecord::Base
  has_secure_password

  validates :user_name, presence: true, uniqueness: true

  has_one :player
  accepts_nested_attributes_for :player, allow_destroy: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
