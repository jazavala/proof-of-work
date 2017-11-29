require 'digest'
require 'pry'
require './lib/proof-of-work/pow_data'

class Pow
  def initialize(message, difficulty)
    @message = message
    @nonce = 0
    @matcher = '0'*difficulty
  end

  def proof_of_work
    start_time = Time.now.to_f

    loop do
      message_with_nonce = "#{@message}#{@nonce}"
      @pow_hash = double_hash message_with_nonce
      break if @pow_hash.start_with?(@matcher)
      @nonce += 1
    end

    end_time = Time.now.to_f - start_time
    PowData.new @message, @difficulty, @pow_hash, @nonce, end_time
  end

  private

  def double_hash(message)
    Digest::SHA256.hexdigest(Digest::SHA256.digest(message)).to_s
  end
end
