require 'digest'
require 'pry'
require './pow_data'

class Pow

  def initialize(message, difficulty)
    @message = message
    @nonce = 0
    @matcher = /^0{#{difficulty}}/
  end

  def proof_of_work
    start_time = Time.now.to_f
    message_with_nonce = "#{@message}#{@nonce}"
    pow_hash = generate_hexadecimal message_with_nonce

    while @matcher.match(pow_hash).nil?
      @nonce += 1
      message_with_nonce = "#{@message}#{@nonce}"
      pow_hash = generate_hexadecimal message_with_nonce
    end
    end_time = Time.now.to_f - start_time
    PowData.new @message, @difficulty, pow_hash, @nonce,end_time
  end

  private

  def generate_hexadecimal(message)
    message_digest = Digest::SHA256.digest message
    hexdigest = Digest::SHA256.hexdigest message_digest
    hexdigest.to_s
  end
end
