class User < ApplicationRecord
  has_one :account
  has_one :saving, through: :account
  has_many :investments, through: :account


end
