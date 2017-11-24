class PowData
  attr_accessor :message, :difficulty, :pow_hash, :nonce, :time_spent

  def initialize(message, difficulty, pow_hash, nonce, time_spent)
    @message = message
    @difficulty = difficulty
    @pow_hash = pow_hash
    @nonce = nonce
    @time_spent = time_spent
  end
end
