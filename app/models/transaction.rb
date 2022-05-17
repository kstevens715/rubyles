class Transaction < ApplicationRecord
  belongs_to :account
  belongs_to :category
  belongs_to :payee
end
