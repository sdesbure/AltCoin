class CoinExchangesController < ApplicationController
  before_action :set_coin_exchange, only: [:show, :edit, :update, :destroy]

  # GET /coin_exchanges
  # GET /coin_exchanges.json
  def index
    @coin_exchanges = CoinExchange.all
  end

  # GET /coin_exchanges/1
  # GET /coin_exchanges/1.json
  def show
  end

  # GET /coin_exchanges/new
  def new
    @coin_exchange = CoinExchange.new
  end

  # GET /coin_exchanges/1/edit
  def edit
  end

  # POST /coin_exchanges
  # POST /coin_exchanges.json
  def create
    @coin_exchange = CoinExchange.new(coin_exchange_params)

    respond_to do |format|
      if @coin_exchange.save
        format.html { redirect_to @coin_exchange, notice: 'Coin exchange was successfully created.' }
        format.json { render action: 'show', status: :created, location: @coin_exchange }
      else
        format.html { render action: 'new' }
        format.json { render json: @coin_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coin_exchanges/1
  # PATCH/PUT /coin_exchanges/1.json
  def update
    respond_to do |format|
      if @coin_exchange.update(coin_exchange_params)
        format.html { redirect_to @coin_exchange, notice: 'Coin exchange was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @coin_exchange }
      else
        format.html { render action: 'edit' }
        format.json { render json: @coin_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coin_exchanges/1
  # DELETE /coin_exchanges/1.json
  def destroy
    @coin_exchange.destroy
    respond_to do |format|
      format.html { redirect_to coin_exchanges_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coin_exchange
      @coin_exchange = CoinExchange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coin_exchange_params
      params.require(:coin_exchange).permit(:coin, :exchange, :price, :update_time, :url)
    end
end
