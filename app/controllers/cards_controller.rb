class CardsController < InheritedResources::Base

  private

    def card_params
      params.require(:card).permit(:card_id, :card_number, :holder_name, :expiration_year, :expiration_month, :allows_charges, :allows_payouts, :creation_date, :bank_name, :bank_code, :customer_id, :points, :addresses)
    end
end

