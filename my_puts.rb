def my_puts(*args, my_name:)
  args.each do |arg|
    #something I do for each thing in my list
    puts "#{my_name}: #{arg}"
  end
end
