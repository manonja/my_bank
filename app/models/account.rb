class Account < ApplicationRecord
  belongs_to :user

  def amount_and_currency
    self.amount.to_s + ' ' + self.currency_name
  end

end
