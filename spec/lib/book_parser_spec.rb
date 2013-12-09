require_relative '../../lib/book_parser'

describe BookParser do
  it "finds a book by title" do
    rumplestilskin = BookParser.parse("rumplestilskin")
    expect(rumplestilskin.title).to eq("Rumplestilskin Russian Fairy Tale")
  end

  it "finds a book by ISBN-10" do
    partials = BookParser.parse("978-0062071057")
    expect(partials.title).to eq("Partials")
    expect(partials.authors).to eq("Dan Wells")
  end
end
