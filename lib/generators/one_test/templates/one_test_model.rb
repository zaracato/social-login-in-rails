require 'test_helper'

<% module_namespacing do -%>
class <%= class_name %>Test < ActiveSupport::TestCase

  def setup
    <%= class_name %>.delete_all
  end

  test "to_s" do
    names = 10.times.map{ random_string }
    names.each do |name|
      account = <%= class_name %>.new name:name
      raise account.errors.to_yaml if not account.save
    end
  
    names.each_with_index do |name, i|
      <%= class_name %>.all[i].to_s == name
    end

  end

  def teardown
    <%= class_name %>.delete_all
  end

end
<% end -%>
