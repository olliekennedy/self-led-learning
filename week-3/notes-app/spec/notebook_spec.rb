require 'notebook'

RSpec.describe Notebook do
  describe '#add_note' do
    it 'adds a note with a title and body' do
      subject.add_note("dog walk", "walk the dog")
      expect(subject.notes.include?({ title: "dog walk", body: "walk the dog" })).to eq true
    end
  end
  describe '#see_all_notes' do
    it 'returns a list of all note titles' do
      subject.add_note("dog walk", "walk the dog")
      subject.add_note("go shopping", "pick up milk, bread and eggs")
      expect(subject.see_all_notes).to eq ["dog walk", "go shopping"]
    end
  end
  describe '#see_note' do
    it 'returns the title and body of a note when given the title' do
      subject.add_note("dog walk", "walk the dog")
      subject.add_note("go shopping", "pick up milk, bread and eggs")
      expect(subject.see_note("dog walk")).to eq "Title: dog walk\nBody: walk the dog"
    end
  end
end
