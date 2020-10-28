class Notebook
  attr_reader :notes
  def initialize
    @notes = []
  end

  def add_note
    @notes << { title: user_input('title'), body: user_input('body') }
  end

  def see_note
    title = user_input('title')
    body = @notes.map { |note| note[:body] if note[:title] == title}.join("")
    "Title: #{title}\nBody: #{body}"
  end

  def list_notes
    @notes.map { |note| note[:title] }
  end

  def user_input(var)
    case var
    when 'title' then @@socket.puts "What is the title of your note?"
    when 'body' then @@socket.puts "What is the body of your note?"
    end
    @@socket.gets.chomp
  end
end
