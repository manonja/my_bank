# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'irbtools'

User.destroy_all
Account.destroy_all
Saving.destroy_all
Investment.destroy_all


100.times do
  user =User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.between(18, 99),
    email: Faker::Internet.email,
    gender: Faker::Gender.binary_type
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
    bank_rate: Faker::Number.decimal(1)
  )

end
