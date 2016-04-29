class AccountCodeGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  def generate_code
    template "account_codes.rb", "lib/account_codes.rb"
  end
end
