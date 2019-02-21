Offer.destroy_all
User.destroy_all

miyagi = User.create!(
  name: 'Senhor Miyagi',
  teacher: true,
  email: 'miyagi@karate.com',
  password: '123456'
  )

daniel_san = User.create!(
  name: 'Daniel-San',
  teacher: false,
  email: 'daniel@karate.com',
  password: '123456'
  )

5.times do
Offer.create!(
    fight_model: "Kung Fu",
    description: "Kung Fu, the Chinese martial arts, also called wushu and quanfa.",
    address: "Mourato Coelho, 1404 - São Paulo",
    price: 200,
    teacher: miyagi,
    title: "Learn the Secrets of Bruce Lee",
    datetime: "25/09/2018"
    )
end
