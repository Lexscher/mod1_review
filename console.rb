require 'pry'
require_relative './customers'
require_relative './banks'
require_relative './accounts'

kim = Customer.new("Kim Possible")
bob = Customer.new("Spongebob Squarepants")

td = Bank.new("TD Bank")
wf = Bank.new("Wells Fargo")
citi = Bank.new("Citi")
chase = Bank.new("Chase")

kim_account1 = Account.new(bank: td, customer: kim, balance: 700)
kim_account2 = Account.new(bank: wf, customer: kim, balance: 1000000)
kim_account3 = Account.new(bank: citi, customer: kim, balance: 4000)
kim_account4 = Account.new(bank: chase, customer: kim, balance: 33000)
kim_account5 = Account.new(bank: chase, customer: kim, balance: 330)

bob_account1 = Account.new(bank: chase, customer: bob, balance: 100)
bob_account2 = Account.new(bank: td, customer: bob, balance: 24)

binding.pry
0
