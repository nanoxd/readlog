require 'spec_helper'

describe Book do
  let(:book) { Book.new(title: "Arthur",
                        author: "Marc Brown", 
                        summary: "Well, the way they make shows is, they make one show.
                                  She starred in one of the ones that became nothing.") }
  it "is valid" do
    expect(book).to be_valid
  end

  it "is invalid without a title" do
    book.title = nil
    expect(book).to be_invalid
  end
end
