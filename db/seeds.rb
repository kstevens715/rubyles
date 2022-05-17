# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alonge the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
account = Account.create!(name: 'Checking')
category = Category.create!(name: 'Dining Out')
payee = Payee.create!(name: 'Burger King')
transaction = Transaction.create!(account: account, category: category, payee: payee, amount_cents: 1394, transaction_date: Date.current)
