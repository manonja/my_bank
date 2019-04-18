require 'faker'
require 'irbtools'

User.destroy_all
Account.destroy_all
Saving.destroy_all
Investment.destroy_all
Company.destroy_all
5.times do
  user =User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.between(18, 99),
    email: Faker::Internet.email,
    gender: Faker::Gender.binary_type,
    password: Faker::Name.first_name
  )

  account=Account.create(
    currency_name: Faker::Currency.name,
    amount: Faker::Number.between(100, 1_000_000),
    user_id: user.id
  )
  saving=Saving.create(
    amount: Faker::Number.between(100, 1_000_000),
    user_id: user.id,
    account_id: account.id
  )
  investment=Investment.create(
    amount: Faker::Number.between(100, 1_000_000),
    user_id: user.id,
    account_id: account.id,
  )

end

# Faker::Company.name

Company.create(investment_id: Investment.first.id, name: 'Drinkbox', rate: 4.20, worth: 25000000)
Company.create(investment_id: Investment.second.id, name: 'Starbucks', rate: 8.9, worth: 19000000)
Company.create(investment_id: Investment.third.id, name: 'Monzo', rate: 5.6, worth: 50000000)
Company.create(investment_id: Investment.fourth.id, name: 'Seabin', rate: 10.6, worth: 1000000)
Company.create(investment_id: Investment.fifth.id, name: 'Source AI', rate: 9.4, worth: 3450000)

