class TransactionsController < ApplicationController
    

    # def index
    #     transactions = Transaction.all
    #     render json: transactions
    # end

    # def show
    #     transaction = Transaction.find_by(id: params[:id])
    #     render json: transaction
    # end


    def create
        transaction = Transaction.create(transaction_params)
        render json: transaction
    end

    private

    def transaction_params
        params.permit(:id, :product)
    end
end
