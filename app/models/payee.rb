class Payee < ApplicationRecord
  has_many :transactions
end
