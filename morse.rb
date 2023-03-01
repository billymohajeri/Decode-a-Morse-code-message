# Create a method to decode a Morse code character,
# takes a string parameter, and return the corresponding character in uppercase
# (e.g. decode_char(".-") returns "A").

def decode_char(char)
  morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
    '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8',
    '----.' => '9'
  }
  morse[char]
end

# Create a method to decode an entire word in Morse code, takes a string parameter,
# and return the string representation. Every character in a word will be separated
# by a single space (e.g. decode_word("-- -.--") returns "MY").

def decode_word(word)
  my_word = ''
  word.split.each do |char|
    my_word += decode_char(char)
  end
  my_word
end

# Create a method to decode the entire message in Morse code, takes a string parameter, 
# and return the string representation. Every word will be separated by 3 spaces 
# (e.g. decode("-- -.--   -. .- -- .") returns "MY NAME").

def decode_sentence(sentence)
  my_sentence = ''
  sentence.split('   ').each do |word|
    my_sentence += "#{decode_word(word)} "
  end
  my_sentence
end

puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')