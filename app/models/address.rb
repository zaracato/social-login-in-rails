class Address < ActiveRecord::Base

  def to_s
    "Address #{id}"
  end

end
