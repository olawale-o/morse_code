MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '....' => 'G',
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
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '.----' => 1,
  '..---' => 2,
  '...--' => 3,
  '....-' => 4,
  '.....' => 5,
  '-....' => 6,
  '--...' => 7,
  '---..' => 8,
  '----.' => 9,
  '-----' => 0
}.freeze

morse_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...'

def decode_char(char)
  if MORSE_CODE.member?(char)
    MORSE_CODE[char]
  else
    ' '
  end
end

def decode_word(word)
  word.split.map { |char| decode_char(char) }
end

def decode(message)
  codes = message.split('   ')
  message = []
  message << codes.map { |word| decode_word(word).join }
  message.join(' ')
end

puts decode morse_message
