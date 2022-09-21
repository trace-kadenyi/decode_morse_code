def decode_morse(morse_char)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
    '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9',
    '-----' => '0', '.-.-.-' => '.', '--..--' => ',', '..--..' => '?', '-.-.--' => '!',
    '-..-.' => '/', '-.--.' => '(', '-.--.-' => ')', '.-...' => '&', '---...' => ':',
    '-.-.-.' => ';', '-...-' => '=', '.-.-.' => '+', '-....-' => '-', '..--.-' => '_',
    '.-..-.' => '"', '...-..-' => '$', '.--.-.' => '@', ' ' => ' '
  }
  morse_code[morse_char]
end

# split word and decode each character
def decode_word(word)
  pattern = ' '
  word.split(pattern).map { |char| decode_morse(char) }.join
end

# split sentence and decode each word
def decode_sentence(sentence)
  sentence.split('  ').map { |word| decode_word(word) }.join(' ')
end

# decode character

puts decode_morse('....') # H

# decode word

puts decode_word('.... . .-.. .-.. ---') # HELLO

# decode sentence
puts decode_sentence('.... . -.--   ..- ... .... .. -. -.. .. .-.-.-') # HEY USHINDI.
puts decode_sentence('..  .- --  - .-. .- -.-. . -.-- .-.-.-') # I AM TRACEY!
puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ... -.-.--')
