class AccountCodes

  <% Metaaccount.all.each do |metaaccount| %>
    <%= metaaccount.costant_name %> = <%= metaaccount.generate_internal_code %>
  <% end %>

  def self.account_codes
    <%=  Metaaccount.accounts.map(&:code) %>
  end

  def self.subaccount_codes
    <%=  Metaaccount.subaccounts.map(&:code) %>
  end

  def self.account_internal_codes
    <%=  Metaaccount.accounts.map(&:generate_internal_code) %>
  end

  def self.subaccount_internal_codes
    <%=  Metaaccount.subaccounts.map(&:generate_internal_code) %>
  end

end
