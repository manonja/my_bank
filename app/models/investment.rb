class Investment < ApplicationRecord
  belongs_to :user
  belongs_to :account

  # def currency
  #   self.amount.to_s + ' ' +
  # end
end
