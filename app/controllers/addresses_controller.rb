class AddressesController < InheritedResources::Base

  private

    def address_params
      params.require(:address).permit(:line1, :line2, :line3, :state, :city, :postal_code, :country_code)
    end
end

