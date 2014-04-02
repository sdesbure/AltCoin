class Coin < ActiveRecord::Base
  def get_difficulty
    rpc = CoinRpc.new "http://#{rpc_user}:#{rpc_password}@#{rpc_url}:#{rpc_port}"
    rpc.getinfo["#{rpc_difficulty}"]
  end

  def get_price
  end
end
