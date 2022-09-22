@morse_alphabet = {
  ".-" => "A",
  "-..." => "B",
  "-.-." => "C",
  "-.." => "D",
  "." => "E", 
  "..-." => "F", 
  "--." => "G", 
  "...." => "H", 
  ".." => "I",
  ".---" => "J", 
  "-.-" => "K", 
  ".-.." => "L",
  "--" => "M", 
  "-." => "N", 
  "---" => "O", 
  ".--." => "P", 
  "--.-" => "Q", 
  ".-." => "R", 
  "..." => "S", 
  "-" => "T", 
  "..-" => "U", 
  "...-" => "V", 
  ".--" => "W", 
  "-..-" => "X", 
  "-.--" => "Y", 
  "--.." => "Z",
}

def decode_morse_char(char)
  return @morse_alphabet[char]
end

def decode_morse_word(word)
  decoded_word = ""
  arr = word.split(" ")
  arr.each{ |n| decoded_word += decode_morse_char(n) }
  return decoded_word
end

def decode_morse_message(message)
  decoded_message = ""
  arr = message.split("   ")
  arr.each_with_index do |n, index|
    if index == arr.length - 1
      decoded_message += decode_morse_word(n)
    else
      decoded_message += "#{decode_morse_word(n)} "
    end
  end
  return decoded_message
end
