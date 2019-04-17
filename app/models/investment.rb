class Investment < ApplicationRecord
  belongs_to :user
  belongs_to :account
  has_many :companies, :dependent => :destroy
 


  validates :amount, presence: true

  # def bank_rate
  #   rand(1.1..14.9).round(2)
  # end

  # def invest(amount)
  #   current_amount = self.amount
  #   current_amount - amount
  # end

end
