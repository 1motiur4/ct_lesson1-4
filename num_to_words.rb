ONES = {
  #   0 => "Zero",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
}

TENS = {
  1 => "ten",
  2 => "twenty",
  3 => "thirty",
  4 => "forty",
  5 => "fifty",
  6 => "sixty",
  7 => "seventy",
  8 => "eighty",
  9 => "ninety",
}

TEENS = {
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
}

COMMAS = {
  1 => "thousand",
  2 => "million",
  3 => "billion",
  4 => "trillion",
}

def num_word_for_hundreds(num)
  return ONES[num] if num < 10
  return TEENS[num] if num < 20 && num > 10

  tens_digit = num / 10
  remainder = num % 10

  return "#{TENS[tens_digit]} #{num_word(remainder)}" if num < 100

  hundreds_digit = num / 100
  remainder = num % 100
  return "#{ONES[hundreds_digit]} hundred #{num_word(remainder)}" if num < 1000
end

def num_word(num)
  comma_count = (num.digits.length - 1) / 3
  return num_word_for_hundreds(num) if comma_count == 0

  max_digit = num / 1000 ** comma_count
  remainder = num % 1000 ** comma_count
  return "#{num_word(max_digit)} #{COMMAS[comma_count]} #{num_word(remainder)}" if num < 1000 ** (comma_count + 1)
end

puts num_word(0)
