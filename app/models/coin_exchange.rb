class CoinExchange < ActiveRecord::Base
  belongs_to :coin
  belongs_to :exchange

  def get_value

  end

end
