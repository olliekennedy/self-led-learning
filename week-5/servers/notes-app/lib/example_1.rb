require 'socket'
require_relative 'notebook'

server = TCPServer.new(2345)

@@socket = server.accept

greeting
@notebook = Notebook.new

while true do
  @@socket.puts "ADD a note, SEE a note or LIST the notes? Exit the app at any time by typing QUIT."
  action = @@socket.gets.chomp
  break if action == "QUIT"
  process(action)
end

def greeting
  @@socket.puts "Welcome to Ollie's Notebook app!\nWhat would you like to do?"
end

def process(action)
  case action
  when "ADD" then @notebook.add_note
  when "SEE" then @@socket.puts @notebook.see_note
  when "LIST" then @@socket.puts @notebook.list_notes
  end
end



# @socket.close
