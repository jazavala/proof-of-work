# Proof of work

`ruby pow_test.rb` to run sample, give me `message` and `difficulty`.

### Inputs

Input Name | Datatype | Example        | Description
---------- | -------- | -------------- | --------
message    | String   | Hello, world!  | The message to do the proof of work on
difficulty | Integer  | 3 (recommended) | The difficulty (number of zeros that the resulting hash must have)

### Outputs

Output Name | Datatype | Example
----------- | -------- | -------
Message     | String   | Hello, world! 
Difficulty  | Integer  | 3
Finished after | float | 0.14545 Seconds
PoW hash    | String [hex] | 0004b5ec0e58569b916cd0e55b1253e2da19e8cf4d291108f8146c0ad5bd3810
Nonce used  | Number   | 4174
