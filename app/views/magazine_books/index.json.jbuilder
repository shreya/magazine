json.array!(@magazine_books) do |magazine_book|
  json.extract! magazine_book, :id, :title
  json.url magazine_book_url(magazine_book, format: :json)
end
