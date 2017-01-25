5.times do |i|
  i += 1
  User.create(
    email: "user#{i}@example.com",
    password: 'password'
  )

  Book.create(
    title: "book#{i}",
    price: i * 1000
  )
end

Review.create(body: 'Nice!',   user_id: 1, book_id: 1)
Review.create(body: 'Greate!', user_id: 1, book_id: 2)
Review.create(body: 'Bad',     user_id: 3, book_id: 3)
Review.create(body: 'No good', user_id: 4, book_id: 3)
Review.create(body: 'worst',   user_id: 5, book_id: 3)
