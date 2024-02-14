puts " Sora: I've been having these weird thoughts lately. Like, is any of this for real, or not?"
puts "King Mickey: So much to do, so little time... Take your time. Don't be afraid. The door is still shut."
puts "King Mickey: Now, step forward. Can you do it?"
puts "On-screen: Type 'walk' to move or 'run' to run."

input = ""
walk_counter = 0
run_counter = 0

until walk_counter > 0 && run_counter > 0
  input = gets.chomp

  if input == "walk"
    walk_counter += 1
    puts "hey I'm walking"
  end
  if input == "RUN"
    run_counter += 1
    puts "hey I'm RUNNING"
  end
end

puts "King Mickey: Power sleeps within you…"
