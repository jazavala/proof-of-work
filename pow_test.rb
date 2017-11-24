#terminal access
require './pow'
require './pow_data'

puts 'Please give me the message'
message = gets.chomp

puts 'Please give me the difficulty'
difficulty = gets.chomp

result = Pow.new(message, 3).proof_of_work
puts "<<<<<<<<<<<<<<<<<<<<< Results >>>>>>>>>>>>>>>>>>>>>>>>>>"
puts "Message : #{message}
Difficulty : #{difficulty}
Finished after: #{'%.5f' % result.time_spent} Seconds
PoW Hash: #{result.pow_hash}
Nonce used: #{result.nonce}"
