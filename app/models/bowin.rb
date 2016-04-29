class Bowin < ActiveRecord::Base
  belongs_to :user
  belongs_to :bank

  def to_s
    name
  end

end
