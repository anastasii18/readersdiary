# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
unless Author.any?
  stephen_king = Author.create!(name: 'Стивен Кинг')
  haruki_murakami = Author.create!(name: 'Харуки Мураками')
  charlotte_bronte = Author.create!(name: 'Шарлотта Бронте')
end

unless Book.any?
  the_shining = Book.create!(title: 'Сияние', author: stephen_king)
  doctor_sleep = Book.create!(title: 'Доктор Сон', author: stephen_king)
  the_wind_up_bird_chronicle = Book.create!(title: 'Хроники заводной птицы', author: haruki_murakami)
  jane_eyre = Book.create!(title: 'Джейн Эйр', author: charlotte_bronte)
end

unless List.any?
  list_stephen_king = List.create!(list_name: 'Книги Стивена Кинга')
  list_stephen_king.books.append [the_shining, doctor_sleep]
  romance_novels = List.create!(list_name: 'Любовные романы')
  romance_novels.books.append [jane_eyre]
  list_haruki_murakami = List.create!(list_name: 'Книги Харуки Мураками')
  list_haruki_murakami.books.append [the_wind_up_bird_chronicle]
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?