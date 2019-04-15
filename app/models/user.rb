class User < ApplicationRecord
  has_one :account
  has_one :saving, through: :account
  has_many :investments, through: :account

  validates :first_name, :last_name, presence: true
  validates :email, confirmation: true



end
