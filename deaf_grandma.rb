# Deaf Grandma program

rand_num = rand(1930..1950)
puts rand_num

puts "Grandma is hard of hearing!"
puts "What do you wanna tell her?"

input = ""

while input != "BYE"
  input = gets.chomp

  if input != input.upcase
    puts "HUH?!  SPEAK UP, SONNY!"
  elsif input == "BYE"
    puts "BYE SONNY!"
  else
    puts "NO, NOT SINCE #{rand_num}"
  end
end
