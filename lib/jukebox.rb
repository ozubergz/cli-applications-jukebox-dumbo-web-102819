# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(data)
  data.each_with_index do |val, i|
    puts "#{i + 1}. #{val}"
  end
end

def play(data)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  output = "Invalid input, please try again"
  
  data.each_with_index do |val, i|
    if (input.to_i - 1) == i || input == val
      output = "Playing #{val}"
    end
  end
  
  puts output
end

def exit_jukebox
  puts "Goodbye"
end

def run(data)
  puts "Please enter a command:"
  input = ""

  until input == 'exit'
    input = gets.strip
    case input
    when "help"
      help
    when "list"
      list(data)
    when "play"
      play(data)
    end
  end

  exit_jukebox
end