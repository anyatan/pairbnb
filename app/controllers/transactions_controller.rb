class TransactionsController < ApplicationController
 
  def new
  gon.client_token = generate_client_token
  @price=100
  end
  # Other Code

  def create
    @result = Braintree::Transaction.sale(
                amount: 100,
                payment_method_nonce: params[:payment_method_nonce],
                options: {
                  store_in_vault: true
                })
    if @result.success?
      # current_user.update(braintree_customer_id: @result.transaction.customer_details.id) unless current_user.has_payment_info?
      redirect_to root_url, notice: "Congratulations! Your transaction has been successfully!"
    else
      flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
      gon.client_token = generate_client_token
      render :new
    end
  end

  private

    def generate_client_token
      Braintree::ClientToken.generate
    end
end