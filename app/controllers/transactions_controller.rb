class TransactionsController < ApplicationController
  def index
    @new_transaction = Transaction.new
  end

  def create
    transaction = Transaction.new(transaction_params)
    transaction.account_id = 1
    transaction.save!

    if transaction.save
      render_transactions_table
    else
      raise 'implement'
    end
  end

  def table
    render_transactions_table
  end

  private

  def transaction_params
    params.require(:transaction).permit(:amount_cents, :category_id, :note, :payee_id, :transaction_date)
  end

  def render_transactions_table
    render turbo_stream: turbo_stream.replace('transactions_table', partial: "transactions/table", locals: { transactions: Transaction.all.order(transaction_date: :desc, id: :desc) })
  end
end
