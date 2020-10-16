class Notebook
  attr_reader :notes
  def initialize
    @notes = []
  end
  def add_note(title, body)
    @notes << { title: title, body: body }
  end
  def see_note(title)
    body = @notes.map { |note| note[:body] if note[:title] == title}.join("")
    "Title: #{title}\nBody: #{body}"
  end
  def see_all_notes
    @notes.map { |note| note[:title] }
  end
end
