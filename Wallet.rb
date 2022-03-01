class Wallet

  def initialize(money)
    @wallet = money
  end

  def current_balance
    return @wallet
  end


  def validate_money(money)
    if money > 0 && (@wallet - money) >= 0 
      true
    else
      false
    end
  end

  # other functions go below

  def add_money(money)
    @wallet += money
    # wallet = wallet + money
  end

  def subtract_money(money)
    @wallet -= money
  end
end
