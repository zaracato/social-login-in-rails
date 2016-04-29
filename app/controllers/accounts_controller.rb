class AccountsController < InheritedResources::Base

  private

    def account_params
      params.require(:account).permit(:user_id, :bank_id, :clabe, :name)
    end
end

