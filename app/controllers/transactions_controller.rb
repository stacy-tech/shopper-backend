class TransactionsController < ApplicationController
    
    def index 
        transactions = Transaction.where(user:logged_in_user)
        render json: transactions
    end
    
    def create
        transaction = Transaction.create(user_id:logged_in_user.id, product_id:transaction_params[:product_id].to_i)
        render json: transaction
    end

    def destroy
        transaction = Transaction.find(params[:id])
        transaction.destroy
        render json: transaction
    end

    private

    def transaction_params
        params.permit(:user_id, :product_id)
    end
end
