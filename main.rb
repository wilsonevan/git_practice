require "colorize"

def puts_git(cmd)
  puts `git #{cmd} -h`
  menu
end

def menu
  puts "1: Enter git command".colorize(:green)
  puts "2: Exit".colorize(:blue)
  print "> "
  choice = gets.to_i
  case choice
  when 1
    puts "Enter git command"
    print "> "
    puts_git(gets.strip)
    menu
  when 2
    puts "Thanks for using the program"
    sleep(2)
    print `clear`
  else
    puts "Invalid choice, try again."
    menu
  end
end

menu