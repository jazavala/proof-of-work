require './lib/proof-of-work/pow'

puts 'Please give me the message'
message = gets.chomp

puts 'Please give me the difficulty'
difficulty = gets.to_i

result = Pow.new(message, difficulty).proof_of_work
puts '<<<<<<<<<<<<<<<<<<<<< Results >>>>>>>>>>>>>>>>>>>>>>>>>>'
puts "Message : #{message}
Difficulty : #{difficulty}
Finished after: #{'%.5f' % result.time_spent} Seconds
PoW Hash: #{result.pow_hash}
Nonce used: #{result.nonce}"
