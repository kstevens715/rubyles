class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
    pp @transactions
  end
end
