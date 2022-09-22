@morse_alphabet = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_morse_char(char)
  @morse_alphabet[char]
end

def decode_morse_word(word)
  decoded_word = ''
  arr = word.split
  arr.each { |n| decoded_word += decode_morse_char(n) }
  decoded_word
end

def decode_morse_message(message)
  decoded_message = ''
  arr = message.split('   ')
  arr.each_with_index do |n, index|
    decoded_message += if index == arr.length - 1
                          decode_morse_word(n)
                        else
                          "#{decode_morse_word(n)} "
                        end
  end
  decoded_message
end
