class Account < ApplicationRecord
  belongs_to :user

  def amount_and_currency
    self.amount.to_s + ' ' + self.currency_name
  end


  def email_adress=(email)
  self.user = User.find_or_create_by(email: email)

end

def email_adress
  self.user ? self.user.email : nil
end
end
