songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  message = "I accept the following commands:\n"\
"- help : displays this help message\n"\
"- list : displays a list of songs you can play\n"\
"- play : lets you choose a song to play\n"\
"- exit : exits this program"
  
  puts message
end

def list(songs)
  songs.each_with_index do |song_name, index|
    puts "#{index + 1}. #{song_name}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if (1..9).include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  
  input = ""
  while input
    puts "Please enter a command:"
    input = gets.chomp
    
    case input
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        break
      else 
        help
    end
  end
end








