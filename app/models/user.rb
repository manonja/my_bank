class User < ApplicationRecord

  # has_gravatar

  has_secure_password
  has_one :account
  has_one :saving
  has_many :investments

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true


  def full_name
    self.first_name + ' ' + self.last_name
  end

end
