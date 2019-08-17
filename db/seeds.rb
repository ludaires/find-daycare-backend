# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username: "User", email: "user@test.com", password: "secret")
daycare = Daycare.create(name: "Bright Horizons at Lincoln Harbor", location: "1000 Harbor Blvd, Weehawken, 07086", rating: 4.0, review_count: 5, yelp_id: "QkrEYGqFsyJ5rdE0tUC8lQ")
my_daycare = MyDaycare.create(daycare_id: daycare.id, user_id: user.id, notes: "like it", schedule_visit: "02/02/2019")
daycare_2 = Daycare.create(name: "Bright Horizons at Lincoln Harbor", location: "510 25th St, Union City, 07087", rating: 4.5, review_count: 3, yelp_id: "H5ywMECq2ryBf89U1MlqXQ")
