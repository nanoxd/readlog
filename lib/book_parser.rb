require 'googlebooks'
require 'pry'

class BookParser
  def self.parse(query)
    result = GoogleBooks.search(query)
    result.first
  end
end
