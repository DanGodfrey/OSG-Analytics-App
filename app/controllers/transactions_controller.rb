class TransactionsController < ActionController::Base
  def show
    @transaction = Transaction.find(params[:id])
  end
end
