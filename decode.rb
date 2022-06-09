CHAR_DECODER = {
  ".-" => "a",
  "-..." => "b",
  "-.-." => "c",
  "-.." => "d",
  "." => "e",
  "..-." => "f",
  "--." => "g",
  "...." => "h",
  ".." => "i",
  ".---" => "j",
  "-.-" => "k",
  ".-.." => "l",
  "--" => "m",
  "-." => "n",
  "---" => "o",
  ".--." => "p",
  "--.-" => "q",
  ".-." => "r",
  "..." => "s",
  "-" => "t",
  "..-" => "u",
  "...-" => "v",
  ".--" => "w",
  "-..-" => "x",
  "-.--" => "y",
  "--.." => "z",
}

def decode_char(char)
  CHAR_DECODER[char].upcase
end

def decode_word(word)
  word.split(' ').map { |char| decode_char(char) }.join
end

def decode(entire_message)
  entire_message.split('   ').map { |word| decode_word(word) }.join(' ')
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
