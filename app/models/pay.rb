class Pay < ActiveRecord::Base
  belongs_to :user
  
  has_many :accounts, through: :account_from
  has_many :accounts, through: :account_to

  enum frecuence: { anual: 0, mensual: 1, semanal: 2, diario: 3  }

  def to_s
    name
  end

end
