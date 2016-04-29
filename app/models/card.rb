class Card < ActiveRecord::Base

  def to_s
    "Card #{id}"
  end

end
