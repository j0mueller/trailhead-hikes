# # # This file should contain all the record creation needed to seed the database with its default values.
# # # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# # #
# # # Examples:
# # #
# # #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# # #   Character.create(name: 'Luke', movie: movies.first)
# #
# users = User.create([
#   {username: "alicebaker", email: "ab@mail.com", password: "apples"},
#   {username: "bobconner",  email: "bc@mail.com", password: "apples"},
#   {username: "caroldavis", email: "cd@mail.com", password: "apples"},
#   {username: "davidellis", email: "de@mail.com", password: "apples"}
#   ]
# )
# #
# hikes = Hike.create([
#   {
#     name: 'Freedom Trail',
#     country: 'USA',
#     state: 'MA',
#     city: 'Boston',
#     difficulty: 'EASY',
#     elevation: 396,
#     distance: 7.7,
#     description: 'Boston\'s Freedom Trail is a 7.7 mile heavily trafficked out and back trail located near Boston, Massachusetts that features a river and is good for all skill levels. The trail offers a number of activity options and is best used from April until September. Dogs are also able to use this trail but must be kept on leash.'
#   },
#   {
#     name: 'Charles River Reservation Full Bike Loop',
#     country: 'USA',
#     state: 'MA',
#     city: 'Boston',
#     difficulty: 'MODERATE',
#     elevation: 531, distance: 27.7,
#     description: 'Charles River Reservation Full Bike Loop is a 27.7 mile moderately trafficked loop trail located near Cambridge, Massachusetts that features beautiful wild flowers and is rated as moderate. The trail offers a number of activity options and is best used from March until October. Dogs are also able to use this trail.'
#   },
#   {
#     name: 'Arnold Arboretum Trail',
#     country: 'USA',
#     state: 'MA',
#     city: 'Jamaica Plain',
#     difficulty: 'EASY',
#     elevation: 357,
#     distance: 3.7,
#     description: 'Arnold Arboretum Trail is a 3.7 mile moderately trafficked loop trail located near Jamaica Plain, Massachusetts that features a lake and is good for all skill levels. The trail offers a number of activity options and is best used from March until October. Dogs are also able to use this trail.'
#   },
#   {
#     name: 'Mount Lafayette and Franconia Ridge Trail Loop',
#     country: 'USA',
#     state: 'NH',
#     city: 'Franconia',
#     difficulty: 'HARD',
#     elevation: 3937,
#     distance: 8.0,
#     description: 'Mount Lafayette and Franconia Ridge Trail Loop is a 8 mile moderately trafficked loop trail located near Franconia, New Hampshire that features a waterfall and is only recommended for very experienced adventurers. The trail offers a number of activity options and is best used from April until October. Dogs are also able to use this trail.'
#   },
#   {
#     name: 'Falling Waters Trail',
#     country: 'USA',
#     state: 'NH',
#     city: 'Lincoln',
#     difficulty: 'HARD',
#     elevation: 3087,
#     distance: 5.7,
#     description: 'Falling Waters Trail is a 5.7 mile heavily trafficked out and back trail located near Lincoln, New Hampshire that features a waterfall and is rated as difficult. The trail is primarily used for hiking and snowshoeing and is accessible year-round. Dogs are also able to use this trail.'
#   },
#   {
#     name: 'Wrights Mountain Trail',
#     country: 'USA',
#     state: 'VT',
#     city: 'Bradford',
#     difficulty: 'MODERATE',
#     elevation: 374,
#     distance: 1.6,
#     description: 'Wrights Mountain Trail is a 1.6 mile out and back trail located near Bradford, Vermont that features a great forest setting. The trail is rated as moderate and primarily used for hiking, walking, and nature trips.'
#   },
#   {
#     name: 'Routeburn Track',
#     country: 'New Zealand' ,
#     state: 'Otago',
#     city: 'Mt Aspiring National Park',
#     difficulty: 'HARD',
#     elevation: 6624,
#     distance: 20.4,
#     description: 'Routeburn Track is a 20.4 mile moderately trafficked point-to-point trail located near Paradise, Otago Region, New Zealand that features a lake and is rated as difficult. The trail offers a number of activity options and is best used from September until May.'
#   },
#   {
#     name: 'Milford Track',
#     country: 'New Zealand',
#     state: 'Southland',
#     city: 'Fiordland National Park',
#     difficulty: 'MODERATE',
#     elevation: 9189,
#     distance: 32.2,
#     description: 'Milford Track is a 32.2 mile heavily trafficked point-to-point trail located near Milford Sound, Southland Region, New Zealand that features a lake and is rated as moderate. The trail offers a number of activity options and is best used from October until April.'
#   },
#   {
#     name: 'Murren Loop Trail',
#     country: 'Switzerland',
#     state: 'Bern',
#     city: 'Mürren',
#     difficulty: 'HARD',
#     elevation: 2834,
#     distance: 6.5,
#     description: 'Murren Loop Trail is a 6.5 mile moderately trafficked loop trail located near Mürren, Bern, Switzerland that features a lake and is rated as difficult. The trail is primarily used for hiking and mountain biking and is best used from June until October.'
#   },
#   {
#     name: 'Greyrock Trail',
#     country: 'USA',
#     state: 'CO',
#     city: 'Laporte',
#     difficulty: 'HARD',
#     elevation: 2549,
#     distance: 7.4,
#     description: 'Greyrock Trail is a 7.4 mile heavily trafficked loop trail located near Laporte, Colorado that features a lake and is rated as difficult. The trail offers a number of activity options and is best used from February until November. Dogs are also able to use this trail but must be kept on leash.'
#   },
#   {
#     name: 'Red Rock Canyon Trails',
#     country: 'USA',
#     state: 'CO',
#     city: 'Colorado Springs',
#     difficulty: 'EASY',
#     elevation: 1072,
#     distance: 5.3,
#     description: 'Red Rock Canyon Trails is a 5.3 mile moderately trafficked loop trail located near Colorado Springs, Colorado that features beautiful wild flowers and is good for all skill levels. The trail offers a number of activity options and is accessible year-round. Dogs are also able to use this trail but must be kept on leash.'
#   },
#   {
#     name: 'Sky Pond Trail',
#     country: 'USA',
#     state: 'CO',
#     city: 'Estes Park',
#     difficulty: 'HARD',
#     elevation: 1833,
#     distance: 8.4,
#     description: 'Sky Pond Trail is a 8.4 mile heavily trafficked out and back trail located near Estes Park, Colorado that features a lake and is rated as difficult. The trail offers a number of activity options and is best used from June until September.'
#   },
#   {
#     name: 'Gimli Ridge',
#     country: 'Canada',
#     state: 'British Columbia',
#     difficulty: 'HARD',
#     elevation: 3733,
#     distance: 5.9,
#     description: 'Gimli Ridge is a 5.9 mile moderately trafficked out and back trail located near Slocan, British Columbia, Canada that features a lake and is rated as difficult. The trail offers a number of activity options and is best used from April until September. Dogs are also able to use this trail.'
#   },
#   {
#     name: 'Tent Rocks Trail',
#     country: 'USA',
#     state: 'NM',
#     city: 'Cochiti Pueblo',
#     difficulty: 'MODERATE',
#     elevation: 938,
#     distance: 3.1,
#     description: 'Tent Rocks Trail is a 3.1 mile heavily trafficked loop trail located near Cochiti Pueblo, New Mexico that features beautiful wild flowers and is rated as moderate. The trail is primarily used for hiking, walking, nature trips, and birding and is accessible year-round.'
#   },
#   {
#     name: 'Silver Spray & Woodbury Basin',
#     country: 'Canada',
#     state: 'British Columbia',
#     city: 'Central Kootenay',
#     difficulty: 'MODERATE',
#     elevation: 4563,
#     distance: 10.4,
#     description: 'Silver Spray & Woodbury Basin is a 10.4 mile out and back trail located near Central Kootenay, British Columbia, Canada that offers scenic views. The trail is rated as moderate and primarily used for hiking, trail running, and backpacking.'
#   },
#   {
#     name: 'Quarry Rock Trail',
#     country: 'Canada',
#     state: 'British Columbia',
#     city: 'North Vancouver',
#     difficulty: 'EASY',
#     elevation: 820,
#     distance: 2.2,
#     description: 'Quarry Rock Trail is a 2.2 mile moderately trafficked out and back trail located near North Vancouver District, British Columbia, Canada that features beautiful wild flowers and is good for all skill levels. The trail offers a number of activity options and is accessible year-round. Dogs are also able to use this trail.'}
#   ]
